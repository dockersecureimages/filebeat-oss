# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~66.5MB)

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.7.0-alpine-3.11.6
2020/05/14 12:06:41 [INFO] ▶ Start clair-scanner
2020/05/14 12:06:42 [INFO] ▶ Server listening on port 9279
2020/05/14 12:06:42 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/14 12:06:42 [INFO] ▶ Analyzing baa19d7c9128ae3692df61c4df2330fe1213ab6d2de938c0f2641a782398e944
2020/05/14 12:06:42 [INFO] ▶ Analyzing 0df4761f24ad4e9e0bcf2f231b5de1b8066bbe62b51d048c741cbabde6453fc3
2020/05/14 12:06:42 [INFO] ▶ Analyzing f6309ddfe8d6624fa020a642cca15e5c619b2e87eda9a5c92b40472791d2aca6
2020/05/14 12:06:42 [INFO] ▶ Image [secureimages/filebeat-oss:7.7.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/filebeat-oss:7.7.0-alpine-3.11.6
2020-05-14T09:06:47.701Z        INFO    Need to update DB
2020-05-14T09:06:47.701Z        INFO    Downloading DB...
2020-05-14T09:06:52.997Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.7.0-alpine-3.11.6 (alpine 3.11.6)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~343MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.7.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.7.0
2020/05/14 12:06:57 [INFO] ▶ Start clair-scanner
2020/05/14 12:07:03 [INFO] ▶ Server listening on port 9279
2020/05/14 12:07:03 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/05/14 12:07:03 [INFO] ▶ Analyzing 7ee8489d6b75b80f4437379dd7311da314dd7b6228d1fda662e434ec4df65ad7
2020/05/14 12:07:03 [INFO] ▶ Analyzing d24e0d7d423958d362ba9a588e2c2e143baf8cc765eb4e3cf9689b0ecdd2a5d1
2020/05/14 12:07:03 [INFO] ▶ Analyzing bde264151ec17dbc5e12dd4cefa5d09ae2d83a331d3125d814d1bca1dc14eee9
2020/05/14 12:07:03 [INFO] ▶ Analyzing 720fcdd3d50d858b3d884af9e88fb392abddbdef2a7ed68ac266f5729bde8ed9
2020/05/14 12:07:03 [INFO] ▶ Analyzing d80a8ce82e6c017076e217dfce9384db120fc8f13a09115dc3248657100247d2
2020/05/14 12:07:03 [INFO] ▶ Analyzing bf9804718d3cd04c0ad921825eddf3dc7848f708112a2082dc79c8e3268048db
2020/05/14 12:07:03 [INFO] ▶ Analyzing 758fc243c7fa69934dd651705da30437af22a59901a5c98240c2abca1bb10474
2020/05/14 12:07:03 [INFO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.7.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress docker.elastic.co/beats/filebeat-oss:7.7.0
2020-05-14T09:07:05.465Z        INFO    Need to update DB
2020-05-14T09:07:05.465Z        INFO    Downloading DB...
2020-05-14T09:07:15.550Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.7.0 (centos 7.8.2003)
============================================================
Total: 600 (UNKNOWN: 0, LOW: 361, MEDIUM: 234, HIGH: 5, CRITICAL: 0)
```
