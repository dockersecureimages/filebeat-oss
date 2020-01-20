#!/bin/sh

set -e

# Wait for elasticsearch to start. It requires that the status be either
# green or yellow.
waitForElasticsearch() {
  ELASTIC_HOST=${ELASTIC_HOST:-elasticsearch:9200}
  echo -n "===== Waiting on Elasticsearch(${ELASTIC_HOST}) to start..."
  i=0;
  while [ $i -le 60 ]; do
    health=$(curl --silent "${ELASTIC_HOST}/_cat/health" | awk '{print $4}')
    if [[ "$health" == "green" ]] || [[ "$health" == "yellow" ]]
    then
      echo ""
      echo "Elasticsearch is ready!"
      return 0
    fi

    echo -n '.'
    sleep 1
    i=$((i+1));
  done

  echo
  echo >&2 'Elasticsearch is not running or is not healthy.'
  echo >&2 "Address: ${ELASTIC_HOST}"
  echo >&2 "$health"
  exit 1
}

# Wait for. Params: host, port, service
waitFor() {
    echo -n "===== Waiting for ${2}(${1}) to start..."
    i=1
    while [ $i -le 20 ]; do
        if nc -vz ${1} 2>/dev/null; then
          echo ""
          echo "${2} is ready!"
          return 0
        fi

        echo -n '.'
        sleep 1
        i=$((i+1))
    done

    echo
    echo >&2 "${2} is not available"
    echo >&2 "Address: ${1}"
}

# Add filebeat as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- filebeat "$@"
fi

# Run as user "filebeat" if the command is "filebeat"
if [ "$1" = 'filebeat' ]; then
	#chown -R filebeat:filebeat /usr/share/filebeat/
  chown -R root:root /usr/share/filebeat/
  waitForElasticsearch
  waitFor ${KIBANA_HOST:-kibana:5601} Kibana
	#set -- su-exec filebeat "$@"
  set -- "$@"
fi

echo "===== Starting Filebeat"
exec "$@"
