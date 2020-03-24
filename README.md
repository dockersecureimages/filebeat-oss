# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.6.1-alpine-3.11.5
2020/03/24 18:55:31 [INFO] ▶ Start clair-scanner
2020/03/24 18:55:31 [INFO] ▶ Server listening on port 9279
2020/03/24 18:55:31 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 18:55:31 [INFO] ▶ Analyzing a443d60a3423dd06d68553667604a724e5d1b56913535da0e634473393f9d4dd
2020/03/24 18:55:32 [INFO] ▶ Analyzing baade3f1a2a235a8a8556cc6ebec130dc98111bdcc3d67c52f854219794f691d
2020/03/24 18:55:32 [INFO] ▶ Analyzing e198dfe8396fc4c2f40caad746e677d81baf6c0f1f2b0153aa543090196ca2f0
2020/03/24 18:55:32 [INFO] ▶ Image [secureimages/filebeat-oss:7.6.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/filebeat-oss:7.6.1-alpine-3.11.5
2020-03-24T16:55:40.177Z        INFO    Need to update DB
2020-03-24T16:55:40.177Z        INFO    Downloading DB...
2020-03-24T16:55:44.534Z        INFO    Reopening DB...
2020-03-24T16:55:46.222Z        INFO    Detecting Alpine vulnerabilities...

secureimages/filebeat-oss:7.6.1-alpine-3.11.5 (alpine 3.11.5)
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
2020/03/24 18:55:52 [INFO] ▶ Start clair-scanner
2020/03/24 18:55:57 [INFO] ▶ Server listening on port 9279
2020/03/24 18:55:57 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/24 18:55:57 [INFO] ▶ Analyzing 15cc39b25eaaf0883e5b8e56f8b0864e0877932ea6c32453ea158f68504d7011
2020/03/24 18:55:57 [INFO] ▶ Analyzing 8649013a59ad59fd1806c842c6c5c0ab6ee21d3703c5efa4ea67331d4ff8a654
2020/03/24 18:55:57 [INFO] ▶ Analyzing 68cc8ef4333d8a5d4f437fa69d61ceea1bf730edd49956051d9ace70f1c653f5
2020/03/24 18:55:57 [INFO] ▶ Analyzing ace64bdbc6c5b91d8f5fd9db947dd3480ac11ba7319de64cd97c97adf828216f
2020/03/24 18:55:57 [INFO] ▶ Analyzing bf8affc47d0ab7596729525c628a8223e35bd3998b5bc8455c0cd5eb4c467478
2020/03/24 18:55:57 [INFO] ▶ Analyzing e2e74cc31ddf1973016533bd3695f7dc8d2c365c120857b9dcac8a7d796da650
2020/03/24 18:55:57 [WARN] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.1] contains 7 total vulnerabilities
2020/03/24 18:55:57 [ERRO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.6.1] contains 7 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/beats/filebeat-oss:7.6.1
2020-03-24T16:56:01.084Z        INFO    Need to update DB
2020-03-24T16:56:01.084Z        INFO    Downloading DB...
2020-03-24T16:56:05.104Z        INFO    Reopening DB...
2020-03-24T16:56:11.748Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/beats/filebeat-oss:7.6.1 (centos 7.7.1908)
============================================================
Total: 642 (UNKNOWN: 0, LOW: 65, MEDIUM: 468, HIGH: 106, CRITICAL: 3)
```
