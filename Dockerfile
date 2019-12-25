FROM ubuntu
MAINTAINER yinghan "mayinghan97@gmail.com"
LABEL Description="add sshd and go env from ubuntu18.04"
RUN apt-get -y update && apt-get -y upgrade \
    && apt-get install -y emacs \
    && apt-get install -y git \
    && echo "root:123456" | chpasswd \
    && apt-get install -y openssh-server \
    && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config \
    && /etc/init.d/ssh restart

EXPOSE 22
CMD [ "/usr/sbin/sshd", "-D" ]
