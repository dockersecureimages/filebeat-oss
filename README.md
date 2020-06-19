# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~68.1MB)

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.8.0-alpine-3.12.0
2020/06/19 20:56:52 [INFO] ▶ Start clair-scanner
2020/06/19 20:56:53 [INFO] ▶ Server listening on port 9279
2020/06/19 20:56:53 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 20:56:53 [INFO] ▶ Analyzing 8dad261473a5ccd1c096193b11cd9736f4ef1f38c04f7c9e03f3f7bf7b919afa
2020/06/19 20:56:53 [INFO] ▶ Analyzing 234c0c0d24db796fd70c9a8cb3bf6b67c418fddd6e6acdfd57a90e64d65203bf
2020/06/19 20:56:53 [INFO] ▶ Analyzing 9c253480a31d2269da4d6c221fdc5df600c324729d4026fffe10bdd8181ebca7
2020/06/19 20:56:53 [INFO] ▶ Image [secureimages/filebeat-oss:7.8.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/filebeat-oss:7.8.0-alpine-3.12.0
2020-06-19T17:56:58.169Z        INFO    Need to update DB
2020-06-19T17:56:58.169Z        INFO    Downloading DB...
2020-06-19T17:57:04.418Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.8.0-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~394MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.8.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.8.0
2020/06/19 20:57:09 [INFO] ▶ Start clair-scanner
2020/06/19 20:57:15 [INFO] ▶ Server listening on port 9279
2020/06/19 20:57:15 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/19 20:57:15 [INFO] ▶ Analyzing 4a952647c5cbcdd6b3e96e240ad7ff3065a9e79b0b52898611b4024e021eaf0c
2020/06/19 20:57:15 [INFO] ▶ Analyzing b2272457b30cfa300b081a21fb5db8235917064ba1c30f824edce3c262cf52dd
2020/06/19 20:57:16 [INFO] ▶ Analyzing e37e6ad10d51a896f18f7ff3c3ebc4977d5f861d62dfabab9f6cac48dc3ce591
2020/06/19 20:57:16 [INFO] ▶ Analyzing 372db3341c09dc0aea6c2adf23fa1d39ec20a70875b48191ace0e10438cd9531
2020/06/19 20:57:16 [INFO] ▶ Analyzing 49f96de4255ff262990c48cf068c09ed6ccf3779c87b15302b4ae495c4365f44
2020/06/19 20:57:16 [INFO] ▶ Analyzing 4050e21d7d06aac02d8382a073a5563e0eea6dc3533eea9a96a7204bbe755081
2020/06/19 20:57:16 [INFO] ▶ Analyzing 29f160f8b54827afa2b720b66213a6f41febd6fd704ba900a052cf1db672b67d
2020/06/19 20:57:16 [INFO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.8.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/beats/filebeat-oss:7.8.0
2020-06-19T17:57:17.989Z        INFO    Need to update DB
2020-06-19T17:57:17.989Z        INFO    Downloading DB...
2020-06-19T17:57:29.017Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.8.0 (centos 7.8.2003)
============================================================
Total: 614 (UNKNOWN: 0, LOW: 360, MEDIUM: 249, HIGH: 5, CRITICAL: 0)
```
