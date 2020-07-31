# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~68.7MB)

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.8.1-alpine-3.12.0
2020/07/31 16:54:27 [INFO] ▶ Start clair-scanner
2020/07/31 16:54:28 [INFO] ▶ Server listening on port 9279
2020/07/31 16:54:28 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/31 16:54:28 [INFO] ▶ Analyzing 10c3268cf90e0a7b6864af4e320ae9c46ad7867a9c2222375899f337e895fff3
2020/07/31 16:54:28 [INFO] ▶ Analyzing 20aea3f369ab62c2463fe1e0276308b549a120c1ecc1dffbda057ae61a7e75a7
2020/07/31 16:54:28 [INFO] ▶ Analyzing 43a1d6a55e22961c656745b918830ace0a15a7d080bb8edab4a9e035210e9b15
2020/07/31 16:54:28 [INFO] ▶ Image [secureimages/filebeat-oss:7.8.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress secureimages/filebeat-oss:7.8.1-alpine-3.12.0
2020-07-31T13:54:35.786Z        INFO    Need to update DB
2020-07-31T13:54:35.786Z        INFO    Downloading DB...
2020-07-31T13:54:41.130Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.8.1-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~396MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.8.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.8.1
2020/07/31 16:54:47 [INFO] ▶ Start clair-scanner
2020/07/31 16:54:53 [INFO] ▶ Server listening on port 9279
2020/07/31 16:54:53 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/07/31 16:54:53 [INFO] ▶ Analyzing 353a591338e2c4ec216ff7e88ffac41a21c3c3b2d85c00e35384ea8f153c835f
2020/07/31 16:54:54 [INFO] ▶ Analyzing 13a55fcda393e1b01c5d2e5946f697e33ddeae23160e4ada90d18f51360b6a1d
2020/07/31 16:54:54 [INFO] ▶ Analyzing 8729c206c953945921d47c5d36678b65c4309b836d4c5efe7d0ab9eb2a9083b5
2020/07/31 16:54:54 [INFO] ▶ Analyzing bea8920b79b3a47aa822f6a6b36ae13aebfb51c2fb32ca52badd460ec072b7a6
2020/07/31 16:54:54 [INFO] ▶ Analyzing 04b89e3062f8f4c87989e73996e04627219ba0bc1dd52b613fcabe3925f1f259
2020/07/31 16:54:54 [INFO] ▶ Analyzing cdb0d4ec47a8b3c450f95b7cf47df420927bbe6395830caa3b6db341ae01e76f
2020/07/31 16:54:54 [INFO] ▶ Analyzing 43902ce099f80b879e9c307524724ac727e3155c4018aca84f4272236107a291
2020/07/31 16:54:54 [INFO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.8.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress docker.elastic.co/beats/filebeat-oss:7.8.1
2020-07-31T13:54:56.770Z        INFO    Need to update DB
2020-07-31T13:54:56.770Z        INFO    Downloading DB...
2020-07-31T13:55:07.520Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.8.1 (centos 7.8.2003)
============================================================
Total: 618 (UNKNOWN: 0, LOW: 361, MEDIUM: 252, HIGH: 5, CRITICAL: 0)
```
