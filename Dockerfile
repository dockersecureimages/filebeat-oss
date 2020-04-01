FROM alpine:3.11.5
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG FILEBEAT_VERSION=7.6.2
ARG TARBALL_ASC="https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-oss-${FILEBEAT_VERSION}-linux-x86_64.tar.gz.asc"
### https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-oss-7.6.2-linux-x86_64.tar.gz.sha512
ARG TARBALL_SHA="836ffdee18f2fe3dfb4d806da89c0e69a908ed3d29bff326ec17d7d99e99a8424d2d44647a08618fe05e38ad5e26b17373fe34bbd4e2458de7b4b1f831247d51"
ARG GPG_KEY="46095ACC8548582C1A2699A9D27D666CD88E42B4"

ENV PATH $PATH:/usr/share/filebeat

RUN apk add --no-cache bash su-exec libc6-compat curl ;\
    apk add --no-cache -t .build-deps ca-certificates gnupg openssl ;\
    set -ex ;\
    wget -O /tmp/filebeat.tar.gz https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-oss-${FILEBEAT_VERSION}-linux-x86_64.tar.gz ;\
    if [ "$TARBALL_SHA" ]; then \
      echo "$TARBALL_SHA  /tmp/filebeat.tar.gz" | sha512sum -c - ;\
    fi ;\
    if [ "$TARBALL_ASC" ]; then \
      wget -O /tmp/filebeat.tar.gz.asc "$TARBALL_ASC" ;\
      export GNUPGHOME="$(mktemp -d)"; \
      ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \
      || gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" \
      || gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY" ) ;\
      gpg --batch --verify /tmp/filebeat.tar.gz.asc /tmp/filebeat.tar.gz ;\
      rm -rf "$GNUPGHOME" || true ;\
    fi ;\
    tar -xzf /tmp/filebeat.tar.gz -C /tmp/ ;\
    mv /tmp/filebeat-${FILEBEAT_VERSION}-linux-x86_64 /usr/share/filebeat ;\
    mkdir -p /usr/share/filebeat/logs /usr/share/filebeat/data ;\
    adduser -DH -s /sbin/nologin filebeat ;\
    chown -R filebeat:filebeat /usr/share/filebeat ;\
    apk del --purge .build-deps ;\
    rm -rf /tmp/* /var/cache/apk/*

ADD data/ /

RUN chmod +x /*.sh

WORKDIR /usr/share/filebeat

ENTRYPOINT ["/filebeat-entrypoint.sh"]

#CMD ["-h"]

CMD [ "-e", "-c", "/usr/share/filebeat/filebeat.yml"]
