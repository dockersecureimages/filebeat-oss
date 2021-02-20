# Filebeat OSS

Filebeat OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~84.7MB)

Security scanning using Clair
```
clair-scanner secureimages/filebeat-oss:7.11.1-alpine-3.13.2
2021/02/20 13:37:11 [INFO] ▶ Start clair-scanner
2021/02/20 13:37:12 [INFO] ▶ Server listening on port 9279
2021/02/20 13:37:12 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 13:37:12 [INFO] ▶ Analyzing f3501f7c502290bde5dd3d4f2da25cdab3fc935f06ddc4e7c0c3a2e148340a4c
2021/02/20 13:37:12 [INFO] ▶ Analyzing fad8acbbb64577ffad282e66aeaa9c7b948009ce75788d81180dc81fa3f105c6
2021/02/20 13:37:12 [INFO] ▶ Analyzing 6474f21853883d161c2df266d7022a4c8ba1dd95e147d171bc2d850282a7682f
2021/02/20 13:37:12 [WARN] ▶ Image [secureimages/filebeat-oss:7.11.1-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 13:37:12 [ERRO] ▶ Image [secureimages/filebeat-oss:7.11.1-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/filebeat-oss:7.11.1-alpine-3.13.2
2021-02-20T13:37:18.538Z        INFO    Need to update DB
2021-02-20T13:37:18.538Z        INFO    Downloading DB...
2021-02-20T13:37:23.000Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T13:37:23.007Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/filebeat-oss:7.11.1-alpine-3.13.2 (alpine 3.13.2)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~415MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/beats/filebeat-oss:7.11.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/beats/filebeat-oss:7.11.1
2021/02/20 13:37:27 [INFO] ▶ Start clair-scanner
2021/02/20 13:37:34 [INFO] ▶ Server listening on port 9279
2021/02/20 13:37:34 [INFO] ▶ Analyzing 291eb894538de0baee3beecbbb57ef8668b00974b05062ff0d78c0dc110820ac
2021/02/20 13:37:34 [INFO] ▶ Analyzing d9b504b12382781d4843f5c883a298cc101ef3bf4a6423078f6087870d0ad97d
2021/02/20 13:37:35 [INFO] ▶ Analyzing e376fb93e6fdb420ea0806037e2f291d5b7406b95b1d5190d0776de000263d57
2021/02/20 13:37:35 [INFO] ▶ Analyzing ae72f82966c4e6a073352ea96a37ea013083a6ec89708814c1a5a2eebf92c08f
2021/02/20 13:37:35 [INFO] ▶ Analyzing 3d84a070106b2d50b8efb8a89de85d9e1013a02316911ba04c42e402beb44089
2021/02/20 13:37:35 [INFO] ▶ Analyzing fb081bcf69a394712d5941a1908c7fa93304097f421c2d576f248ac9587f5e3e
2021/02/20 13:37:35 [INFO] ▶ Analyzing 5a776a2756fa0e1c4b804ecb5cbbdfe80e98354e2861b173ad58a02c958fb0be
2021/02/20 13:37:35 [INFO] ▶ Analyzing 0ecd3a59787c4d4b245f459b94a8601aa0da720c920ca624157d970a765c2d56
2021/02/20 13:37:35 [INFO] ▶ Analyzing aa9c87892f3720af5ad15b8b6480427bdeaac787bc60edb2a27fc2f195f5f546
2021/02/20 13:37:35 [INFO] ▶ Analyzing 72c007203b43acf4cd9d3e9b6e9a995bfebb22f1ee85ba93f3a9e5fdf0a947cc
2021/02/20 13:37:35 [INFO] ▶ Analyzing 619cb622e949875ff9bb21c24ac4d9b54ecdc79d4d499a3018b06a5e274be937
2021/02/20 13:37:35 [INFO] ▶ Image [docker.elastic.co/beats/filebeat-oss:7.11.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress docker.elastic.co/beats/filebeat-oss:7.11.1
2021-02-20T13:37:36.942Z        INFO    Need to update DB
2021-02-20T13:37:36.942Z        INFO    Downloading DB...
2021-02-20T13:37:47.202Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2021-02-20T13:37:47.445Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

docker.elastic.co/beats/filebeat-oss:7.11.1 (centos 7.9.2009)
=============================================================
Total: 596 (UNKNOWN: 0, LOW: 357, MEDIUM: 235, HIGH: 4, CRITICAL: 0)
```
