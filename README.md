# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.6.2-alpine-3.11.5
2020/04/01 15:57:28 [INFO] ▶ Start clair-scanner
2020/04/01 15:57:28 [INFO] ▶ Server listening on port 9279
2020/04/01 15:57:28 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/01 15:57:28 [INFO] ▶ Analyzing 524e081378fa21ee96a00a019e618c789afafdb00ed652c4cadb648e619c636b
2020/04/01 15:57:28 [INFO] ▶ Analyzing e6e4e574f6132a2940190ea0fa8d403fcf4c61a57b478375d3374a0cc101ef07
2020/04/01 15:57:28 [INFO] ▶ Analyzing 737919976302d7709738a4e0484459fc7f5d241d9f47868d4df7b4fbd4ac744f
2020/04/01 15:57:28 [INFO] ▶ Image [secureimages/filebeat-oss:7.6.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/filebeat-oss:7.6.2-alpine-3.11.5
2020-04-01T12:57:35.283Z        INFO    Need to update DB
2020-04-01T12:57:35.283Z        INFO    Downloading DB...
2020-04-01T12:58:10.228Z        INFO    Reopening DB...
2020-04-01T12:58:11.743Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.6.2-alpine-3.11.5 (alpine 3.11.5)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.6.2
2020/04/01 15:58:24 [INFO] ▶ Start clair-scanner
2020/04/01 15:58:28 [INFO] ▶ Server listening on port 9279
2020/04/01 15:58:28 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/01 15:58:28 [INFO] ▶ Analyzing 7f9998b6d0ff8c4bea29df0d96f81ea1d58a442ba97cf8f30be4f6f339cc2d8f
2020/04/01 15:58:28 [INFO] ▶ Analyzing c4012a3c8ccb98e88c98bdf8a6052d8a90f7a42ae2487a5b6ff3679f149e9df6
2020/04/01 15:58:28 [INFO] ▶ Analyzing 21f46c61ada72b60aaa07a7930310f84b0e123c2144d58b99af8ea70d14b1f1f
2020/04/01 15:58:28 [INFO] ▶ Analyzing c5215aed5d633cfa035ff3e167dc26f97e4199b853a225a3da49e1169eaa5552
2020/04/01 15:58:28 [INFO] ▶ Analyzing c28b54e46bd624d746f6e1fcf6d2a659c91ffea3d93ccef16e14cfa63897dd8d
2020/04/01 15:58:28 [INFO] ▶ Analyzing b7a3edd3ad6ac2fd11b73677240e25dd875995664a43a6350f2fd2088ebad0ae
2020/04/01 15:58:28 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.2] contains 18 total vulnerabilities
2020/04/01 15:58:28 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.2] contains 18 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/beats/filebeat-oss:7.6.2
2020-04-01T12:58:31.221Z        INFO    Need to update DB
2020-04-01T12:58:31.221Z        INFO    Downloading DB...
2020-04-01T12:58:57.719Z        INFO    Reopening DB...
2020-04-01T12:59:04.521Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.6.2 (centos 7.7.1908)
============================================================
Total: 640 (UNKNOWN: 0, LOW: 64, MEDIUM: 467, HIGH: 106, CRITICAL: 3)
```
