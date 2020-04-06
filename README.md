Jenkins Image with Python3 on jenkins-alpine
---------------------------------------------------

Dockerfile for Jenkins with python3 based on jenkins linux alpine with additions of basic python core libraries.

Building the image
----------------------

```
docker build . -t jenkins_python3
```
Running the container
----------------------
This will run jenkins at port 9000
```
docker run -d -v jenkins_home:/var/jenkins_home -p 9000:8080 -p 50000:50000 jenkins_python3
```
