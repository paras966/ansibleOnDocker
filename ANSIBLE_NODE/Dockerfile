FROM ubuntu
RUN apt update -y && apt install net-tools -y &&  apt-get install openssh-server -y && apt install systemctl -y && apt install sudo -y
ARG USER=devops
ARG PASS="devops"
RUN useradd -m -s /bin/bash $USER && echo "$USER:$PASS" | chpasswd
RUN echo 'devops ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN echo 'service ssh start' >> /etc/bash.bashrc && echo 'systemctl enable ssh' >> /etc/bash.bashrc  && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config 