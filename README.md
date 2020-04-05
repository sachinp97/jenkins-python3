Jenkins Image with Python3 on jenkins-alpine
---------------------------------------------------

Dockerfile for Jenkins with python3 on jenkins linux alpine 

Building the image
----------------------

```
docker build . -t jenkins_python3
```
Running the container
----------------------

```
docker run -d -v jenkins_home:/var/jenkins_home -p 9000:8000 -p 50000:50000 jenkins_python3
```
