# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~66.7MB)

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.7.1-alpine-3.12.0
2020/06/11 13:25:40 [INFO] ▶ Start clair-scanner
2020/06/11 13:25:40 [INFO] ▶ Server listening on port 9279
2020/06/11 13:25:40 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 13:25:40 [INFO] ▶ Analyzing ad0c59ea4880a7cac571164dc94873e1f6eca11578b04dbf1aa816e5137bd484
2020/06/11 13:25:40 [INFO] ▶ Analyzing 71768c28495c04635023d72134d7f38725c49c65165bb55184166eb2d9976460
2020/06/11 13:25:40 [INFO] ▶ Analyzing 5136f8fce806880b743fb384d1d65c372819dcbe8b07c1c410d24b43d4602b0a
2020/06/11 13:25:40 [INFO] ▶ Image [secureimages/filebeat-oss:7.7.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/filebeat-oss:7.7.1-alpine-3.12.0
2020-06-11T10:25:46.279Z        INFO    Need to update DB
2020-06-11T10:25:46.279Z        INFO    Downloading DB...
2020-06-11T10:25:50.601Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.7.1-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~391MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.7.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.7.1
2020/06/11 13:25:56 [INFO] ▶ Start clair-scanner
2020/06/11 13:26:02 [INFO] ▶ Server listening on port 9279
2020/06/11 13:26:02 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/11 13:26:02 [INFO] ▶ Analyzing 4a0bece506173717df0b3d9227f4a19d291c86ff4676d75b35fd22fef9daa5ef
2020/06/11 13:26:02 [INFO] ▶ Analyzing 2e3ae6a4d6af15b34d771ab1f344230b83877b0b5aef2d4e338a8a3a559aee2b
2020/06/11 13:26:02 [INFO] ▶ Analyzing 6c83d50d06a367bbcb46d3938710de2631f4927f0d3594e0ab49a3971842c5a5
2020/06/11 13:26:02 [INFO] ▶ Analyzing 8a0e45812d36aaf2253ebe65e9bffb16db97a0e62205fe35b1915a1c23054be8
2020/06/11 13:26:02 [INFO] ▶ Analyzing 45e04079732e83162e06eaf712ffcf3e31922ef2f57ce6b8221788547fe62e15
2020/06/11 13:26:02 [INFO] ▶ Analyzing 2a0a57d4d88cf1b74ea5ce0aeff1941154340fb5c222965aa5edd3c4a8cc8c02
2020/06/11 13:26:02 [INFO] ▶ Analyzing c85660f6b6d17b32db57ce89dd4bf1ef7c203985a124425740d9a3b88b50897c
2020/06/11 13:26:02 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.7.1] contains 1 total vulnerabilities
2020/06/11 13:26:02 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.7.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/beats/filebeat-oss:7.7.1
2020-06-11T10:26:05.331Z        INFO    Need to update DB
2020-06-11T10:26:05.331Z        INFO    Downloading DB...
2020-06-11T10:26:15.893Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.7.1 (centos 7.8.2003)
============================================================
Total: 610 (UNKNOWN: 0, LOW: 362, MEDIUM: 241, HIGH: 7, CRITICAL: 0)
```
