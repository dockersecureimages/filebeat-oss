# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.6.0-alpine-3.11.3
2020/02/11 20:48:46 [INFO] ▶ Start clair-scanner
2020/02/11 20:48:47 [INFO] ▶ Server listening on port 9279
2020/02/11 20:48:47 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 20:48:47 [INFO] ▶ Analyzing 987fc02970734620a3611fb8e2f5d328cb903b53a8beae9f72a660452f0fd98f
2020/02/11 20:48:47 [INFO] ▶ Analyzing fb9472fac2163c41f308710524925dadff2af43fda79d4752000e129101ee497
2020/02/11 20:48:47 [INFO] ▶ Analyzing d8a52f4866bc4b9fe6b7cdf56b2a4813182868ee775690d2777a15ca741da2cd
2020/02/11 20:48:47 [INFO] ▶ Image [secureimages/filebeat-oss:7.6.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/filebeat-oss:7.6.0-alpine-3.11.3
2020-02-11T18:48:54.660Z        INFO    Need to update DB
2020-02-11T18:48:54.660Z        INFO    Downloading DB...
2020-02-11T18:48:58.158Z        INFO    Reopening DB...
2020-02-11T18:49:01.110Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.6.0-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.6.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.6.0
2020/02/11 20:49:05 [INFO] ▶ Start clair-scanner
2020/02/11 20:49:10 [INFO] ▶ Server listening on port 9279
2020/02/11 20:49:10 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/11 20:49:10 [INFO] ▶ Analyzing e0c2a0724369ca08c9f0a4c3debec93c2408b7d3b1a3aa3a7878748b8be887bb
2020/02/11 20:49:10 [INFO] ▶ Analyzing 66e3c7bb7cf27e42fc252233d240d17577af730dc3be8b1c9860b3c34eebc4a2
2020/02/11 20:49:10 [INFO] ▶ Analyzing 668f6b5560a720890097f46abd7d1965f93a541986c13163013b77feee63e74c
2020/02/11 20:49:10 [INFO] ▶ Analyzing 0b534dba34bce13dac4f89f7cf6434996fb6bc11e748dd954753f69c57adac6d
2020/02/11 20:49:10 [INFO] ▶ Analyzing 40deca4b5453f26d3f72570b6419dc1c6d7feaa8ac3714834379233b8950d0d2
2020/02/11 20:49:10 [INFO] ▶ Analyzing b249c9761c63fb01df9ffeb9861b980bdc2a889d9ba32a3c7c1db6ef1f5b129c
2020/02/11 20:49:10 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.0] contains 7 total vulnerabilities
2020/02/11 20:49:10 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.0] contains 7 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/beats/filebeat-oss:7.6.0
2020-02-11T18:49:13.675Z        INFO    Need to update DB
2020-02-11T18:49:13.675Z        INFO    Downloading DB...
2020-02-11T18:49:18.728Z        INFO    Reopening DB...
2020-02-11T18:49:25.543Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.6.0 (centos 7.7.1908)
============================================================
Total: 626 (UNKNOWN: 0, LOW: 59, MEDIUM: 461, HIGH: 103, CRITICAL: 3)
```
