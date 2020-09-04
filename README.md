# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~81.2MB)

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.9.1-alpine-3.12.0
2020/09/04 16:11:31 [INFO] ▶ Start clair-scanner
2020/09/04 16:11:32 [INFO] ▶ Server listening on port 9279
2020/09/04 16:11:32 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 16:11:32 [INFO] ▶ Analyzing c7de7ca76e32b17ee6e4a2857baca3d5904a377384ff3d8e07a76b630139cdfa
2020/09/04 16:11:32 [INFO] ▶ Analyzing 4c18beca825243ee6aa4d8704686548ffb227d2d8c9eb284c54c66a4efc1163d
2020/09/04 16:11:32 [INFO] ▶ Analyzing 91d6fab5499c42c7089bcbad8f120127ff1978760fa4fb53b664ba1f0b6ec559
2020/09/04 16:11:32 [INFO] ▶ Image [secureimages/filebeat-oss:7.9.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/filebeat-oss:7.9.1-alpine-3.12.0
2020-09-04T16:11:41.662Z        INFO    Need to update DB
2020-09-04T16:11:41.662Z        INFO    Downloading DB...
2020-09-04T16:11:47.316Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.9.1-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~371MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.9.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.9.1
2020/09/04 16:11:55 [INFO] ▶ Start clair-scanner
2020/09/04 16:12:00 [INFO] ▶ Server listening on port 9279
2020/09/04 16:12:00 [INFO] ▶ Analyzing 33b5e87a65b65985a0445827bd27436b3467bb578d1b1cc2aa0b6000685fb4bf
2020/09/04 16:12:00 [INFO] ▶ Analyzing da00777e9498d95e00a3121d7e07cf78d30f63f8d6cca57e0fe1470e4f07720e
2020/09/04 16:12:01 [INFO] ▶ Analyzing ac94fda05ed67f40b497379e9bdeaf4487976501d96e6742609c50e88fd1b457
2020/09/04 16:12:01 [INFO] ▶ Analyzing 956d35091e8e7187b90a9e62df17b123d7e3b0fb2b908e607b67396f619e636f
2020/09/04 16:12:01 [INFO] ▶ Analyzing 79d7b7f57144c23f6df37c0b70fbc9500af4ba3c34cc5a1464c69e37a87b1a74
2020/09/04 16:12:01 [INFO] ▶ Analyzing 5b02e7062bf9f8090a6c65e99d699c754bdccc5cbbdc271bf03c54ff9c4a4e53
2020/09/04 16:12:01 [INFO] ▶ Analyzing b280d110e85c040d51981a9cac778fb2697a268f6d0faa20a5b1cba079592766
2020/09/04 16:12:01 [INFO] ▶ Analyzing 5b335a9ce17c59b65c54a57f727f469d6d3bf7e0671bca4831351b2172a9b827
2020/09/04 16:12:01 [INFO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.9.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress docker.elastic.co/beats/filebeat-oss:7.9.1
2020-09-04T16:12:03.070Z        INFO    Need to update DB
2020-09-04T16:12:03.070Z        INFO    Downloading DB...
2020-09-04T16:12:12.537Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.9.1 (centos 7.8.2003)
============================================================
Total: 636 (UNKNOWN: 0, LOW: 365, MEDIUM: 266, HIGH: 5, CRITICAL: 0)  
```
