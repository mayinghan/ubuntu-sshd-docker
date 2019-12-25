# ubuntu-sshd-docker
A docker image which will build a container of the latest ubuntu including ssh server, git, emacs

## How to use
1. Go inside the directory containing this Dockerfile and 
run ```docker build -t ubuntu-sshd:latest .```

2. Start the docker by running 
```docker run -d -p [#yourhostport]:22 --name [name-your-container] ubuntu-sshd```

3. Now you can ssh into the ubuntu by running ```ssh -p [#yourhostport] root@localhost```

## Note
The password is 123456 for root user. You will enter the image as root user by default. 

## Author
Yinghan Ma 
mayinghan97@gmail.com
