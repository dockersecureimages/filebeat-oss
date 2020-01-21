# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.5.1-alpine-3.11.3
2020/01/20 23:48:18 [INFO] ▶ Start clair-scanner
2020/01/20 23:48:19 [INFO] ▶ Server listening on port 9279
2020/01/20 23:48:19 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 23:48:19 [INFO] ▶ Analyzing 35de7f2eb383f82ee8c3442e348c55cf124eaa31cad23ea13d941f5a0590626c
2020/01/20 23:48:19 [INFO] ▶ Analyzing 52adfde38ca8979ce7155e6ff073e6fed5df389141d5eb2c4767e4f1c89bc48f
2020/01/20 23:48:19 [INFO] ▶ Analyzing 83d775d81ef264208911c7dbc3a6a45174c5882ee54a1b5f6adc04a5ae7cd8c7
2020/01/20 23:48:19 [INFO] ▶ Image [secureimages/filebeat-oss:7.5.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/filebeat-oss:7.5.1-alpine-3.11.3
2020-01-20T21:48:29.756Z        INFO    Need to update DB
2020-01-20T21:48:29.756Z        INFO    Downloading DB...
2020-01-20T21:48:33.682Z        INFO    Reopening DB...
2020-01-20T21:48:35.001Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.5.1-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.5.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.5.1
2020/01/20 23:48:46 [INFO] ▶ Start clair-scanner
2020/01/20 23:48:51 [INFO] ▶ Server listening on port 9279
2020/01/20 23:48:51 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/20 23:48:51 [INFO] ▶ Analyzing d8380166330763c20598d8826c9de82e6faaff74f720787c6908366338a01299
2020/01/20 23:48:51 [INFO] ▶ Analyzing 99f1164e1d4ec285f3fcf6ba63aa40e53e2cc11f39408cf4e70856046319f668
2020/01/20 23:48:51 [INFO] ▶ Analyzing 85a1812ba981092b6501bf63cafc927d3b46634568f9fd7151049c78539ae3c1
2020/01/20 23:48:51 [INFO] ▶ Analyzing aa4edf3022eced699e31ce1f17b4dc01ff452540d50469372f4a577d62bb41b6
2020/01/20 23:48:51 [INFO] ▶ Analyzing 05c713d57e9d7861431f9081c27c0102f720f08573a88ea7a6be2f3fa70c62e1
2020/01/20 23:48:51 [INFO] ▶ Analyzing f77aede3bc838173beee370ea7f9a6316d0ba652a2d1523c1433decadedc67d6
2020/01/20 23:48:51 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.5.1] contains 6 total vulnerabilities
2020/01/20 23:48:51 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.5.1] contains 6 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress docker.elastic.co/beats/filebeat-oss:7.5.1
2020-01-20T21:48:55.945Z        INFO    Need to update DB
2020-01-20T21:48:55.945Z        INFO    Downloading DB...
2020-01-20T21:48:59.491Z        INFO    Reopening DB...
2020-01-20T21:49:04.871Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.5.1 (centos 7.7.1908)
============================================================
Total: 634 (UNKNOWN: 0, LOW: 61, MEDIUM: 466, HIGH: 102, CRITICAL: 5)
```
