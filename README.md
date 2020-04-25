# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~68.4MB)

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.6.2-alpine-3.11.6
2020/04/25 12:32:11 [INFO] ▶ Start clair-scanner
2020/04/25 12:32:11 [INFO] ▶ Server listening on port 9279
2020/04/25 12:32:11 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 12:32:11 [INFO] ▶ Analyzing b4162187aba9671e69b53d8100c5bbdf0d6b5a0d75bdf6995814fc8d68c88e79
2020/04/25 12:32:11 [INFO] ▶ Analyzing 8bff0c67cb51098e37eb6e2e642fcd7b19a01cb8846a42280b6312b2de76fea0
2020/04/25 12:32:11 [INFO] ▶ Analyzing 356d8f4022fe2a473a33e24b638c5c4e6ee9c54cf8e6b19e7c384eafa3827cfd
2020/04/25 12:32:11 [INFO] ▶ Image [secureimages/filebeat-oss:7.6.2-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/filebeat-oss:7.6.2-alpine-3.11.6
2020-04-25T09:32:18.213Z        INFO    Need to update DB
2020-04-25T09:32:18.213Z        INFO    Downloading DB...
2020-04-25T09:32:23.741Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.6.2-alpine-3.11.6 (alpine 3.11.6)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~322MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.6.2
2020/04/25 12:32:29 [INFO] ▶ Start clair-scanner
2020/04/25 12:32:33 [INFO] ▶ Server listening on port 9279
2020/04/25 12:32:33 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/25 12:32:33 [INFO] ▶ Analyzing 7f9998b6d0ff8c4bea29df0d96f81ea1d58a442ba97cf8f30be4f6f339cc2d8f
2020/04/25 12:32:33 [INFO] ▶ Analyzing c4012a3c8ccb98e88c98bdf8a6052d8a90f7a42ae2487a5b6ff3679f149e9df6
2020/04/25 12:32:33 [INFO] ▶ Analyzing 21f46c61ada72b60aaa07a7930310f84b0e123c2144d58b99af8ea70d14b1f1f
2020/04/25 12:32:33 [INFO] ▶ Analyzing c5215aed5d633cfa035ff3e167dc26f97e4199b853a225a3da49e1169eaa5552
2020/04/25 12:32:33 [INFO] ▶ Analyzing c28b54e46bd624d746f6e1fcf6d2a659c91ffea3d93ccef16e14cfa63897dd8d
2020/04/25 12:32:33 [INFO] ▶ Analyzing b7a3edd3ad6ac2fd11b73677240e25dd875995664a43a6350f2fd2088ebad0ae
2020/04/25 12:32:33 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.2] contains 18 total vulnerabilities
2020/04/25 12:32:33 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.2] contains 18 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress docker.elastic.co/beats/filebeat-oss:7.6.2
2020-04-25T09:32:37.950Z        INFO    Need to update DB
2020-04-25T09:32:37.950Z        INFO    Downloading DB...
2020-04-25T09:32:47.748Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.6.2 (centos 7.7.1908)
============================================================
Total: 638 (UNKNOWN: 0, LOW: 62, MEDIUM: 467, HIGH: 106, CRITICAL: 3)
```
