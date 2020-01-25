# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.5.2-alpine-3.11.3
2020/01/25 17:08:44 [INFO] ▶ Start clair-scanner
2020/01/25 17:08:45 [INFO] ▶ Server listening on port 9279
2020/01/25 17:08:45 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/25 17:08:45 [INFO] ▶ Analyzing ca1e5a2b4258a1e7dc8e696f00a5e325df49355edc7072b5fa6192e611de468f
2020/01/25 17:08:45 [INFO] ▶ Analyzing be682e75a223066c1f3fd149de541ffbe98ea3d3c2bb8212ad9ad2eee4ce3b90
2020/01/25 17:08:45 [INFO] ▶ Analyzing d1b6de21c1c665cdcf15b65cae6c237e89753ae82a210ddef346618a15cc4f95
2020/01/25 17:08:45 [INFO] ▶ Image [secureimages/filebeat-oss:7.5.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/filebeat-oss:7.5.2-alpine-3.11.3
2020-01-25T15:08:52.363Z        INFO    Need to update DB
2020-01-25T15:08:52.363Z        INFO    Downloading DB...
2020-01-25T15:08:56.354Z        INFO    Reopening DB...
2020-01-25T15:08:57.670Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.5.2-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.5.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.5.2
2020/01/25 17:09:02 [INFO] ▶ Start clair-scanner
2020/01/25 17:09:07 [INFO] ▶ Server listening on port 9279
2020/01/25 17:09:07 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/25 17:09:07 [INFO] ▶ Analyzing 45e694e1405a213fb109efe7e31f755f84b15c94f6bb4355340f39bc9d26e4f8
2020/01/25 17:09:07 [INFO] ▶ Analyzing 776865c8bd2473f25fefc107aa1354a50352c706cd9843c46f6677c984e93351
2020/01/25 17:09:07 [INFO] ▶ Analyzing 86015ebdcb6f8cc778642a8911148b011f977453fc573e71a5a877da7f887a60
2020/01/25 17:09:07 [INFO] ▶ Analyzing 6be4c714821411ab1589f23872fe7664e60267a4f3e833b49d0b389299e0d572
2020/01/25 17:09:07 [INFO] ▶ Analyzing c1b554965b6d5e8da1b0d60772bc6ccf381596014fb7978b8ed717da307fcde7
2020/01/25 17:09:07 [INFO] ▶ Analyzing 3b74c440ffd3a26b7423a3cfe4686a31947140850a850abdbba0700eb45e4a64
2020/01/25 17:09:07 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.5.2] contains 6 total vulnerabilities
2020/01/25 17:09:07 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.5.2] contains 6 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/beats/filebeat-oss:7.5.2
2020-01-25T15:09:14.555Z        INFO    Need to update DB
2020-01-25T15:09:14.555Z        INFO    Downloading DB...
2020-01-25T15:09:18.001Z        INFO    Reopening DB...
2020-01-25T15:09:23.587Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.5.2 (centos 7.7.1908)
============================================================
Total: 637 (UNKNOWN: 0, LOW: 61, MEDIUM: 468, HIGH: 103, CRITICAL: 5)
```
