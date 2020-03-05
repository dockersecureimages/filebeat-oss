# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.6.1-alpine-3.11.3
2020/03/05 15:28:28 [INFO] ▶ Start clair-scanner
2020/03/05 15:28:29 [INFO] ▶ Server listening on port 9279
2020/03/05 15:28:29 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/05 15:28:29 [INFO] ▶ Analyzing 805813d72f0c23624d75b44f56df1601152d21b1cdeea8521de28b263840d478
2020/03/05 15:28:29 [INFO] ▶ Analyzing 8c48308d4e5588e71b757ff7136c7320eaff20910f302cfd7988a8d3be5fc245
2020/03/05 15:28:29 [INFO] ▶ Analyzing 0376f572b2f3bcf01f9503b750c43c7949395b3789488c4684606657c21c6e9d
2020/03/05 15:28:29 [INFO] ▶ Image [secureimages/filebeat-oss:7.6.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/filebeat-oss:7.6.1-alpine-3.11.3
2020-03-05T13:28:36.506Z        INFO    Need to update DB
2020-03-05T13:28:36.506Z        INFO    Downloading DB...
2020-03-05T13:28:40.975Z        INFO    Reopening DB...
2020-03-05T13:28:42.107Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.6.1-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.6.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.6.1
2020/03/05 15:28:47 [INFO] ▶ Start clair-scanner
2020/03/05 15:28:51 [INFO] ▶ Server listening on port 9279
2020/03/05 15:28:51 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 15:28:51 [INFO] ▶ Analyzing 15cc39b25eaaf0883e5b8e56f8b0864e0877932ea6c32453ea158f68504d7011
2020/03/05 15:28:51 [INFO] ▶ Analyzing 8649013a59ad59fd1806c842c6c5c0ab6ee21d3703c5efa4ea67331d4ff8a654
2020/03/05 15:28:52 [INFO] ▶ Analyzing 68cc8ef4333d8a5d4f437fa69d61ceea1bf730edd49956051d9ace70f1c653f5
2020/03/05 15:28:52 [INFO] ▶ Analyzing ace64bdbc6c5b91d8f5fd9db947dd3480ac11ba7319de64cd97c97adf828216f
2020/03/05 15:28:52 [INFO] ▶ Analyzing bf8affc47d0ab7596729525c628a8223e35bd3998b5bc8455c0cd5eb4c467478
2020/03/05 15:28:52 [INFO] ▶ Analyzing e2e74cc31ddf1973016533bd3695f7dc8d2c365c120857b9dcac8a7d796da650
2020/03/05 15:28:52 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.1] contains 7 total vulnerabilities
2020/03/05 15:28:52 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.1] contains 7 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress docker.elastic.co/beats/filebeat-oss:7.6.1
2020-03-05T13:28:54.646Z        INFO    Need to update DB
2020-03-05T13:28:54.647Z        INFO    Downloading DB...
2020-03-05T13:28:58.854Z        INFO    Reopening DB...
2020-03-05T13:29:04.169Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.6.1 (centos 7.7.1908)
============================================================
Total: 634 (UNKNOWN: 0, LOW: 61, MEDIUM: 468, HIGH: 102, CRITICAL: 3)
```
