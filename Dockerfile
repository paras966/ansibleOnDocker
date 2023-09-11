FROM ubuntu
RUN apt update -y && apt install software-properties-common -y && add-apt-repository --yes --update ppa:ansible/ansible -y && apt install ansible -y && apt-get install openssh-server -y && apt install systemctl -y && apt install sudo -y
ARG USER=devops
ARG PASS="devops"
RUN useradd -m -s /bin/bash $USER && echo "$USER:$PASS" | chpasswd
RUN echo 'devops ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN echo 'service ssh start' >> /etc/bash.bashrc && echo 'systemctl enable ssh' >> /etc/bash.bashrc && echo "[web]" >> /etc/ansible/hosts && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && echo '[defaults]\n remote_tmp = /var/tmp/${USER}/ansible \n host_key_checking = False' >> /etc/ansible/ansible.cfg
COPY "run.sh" .
RUN ["chmod", "+x", "./run.sh"]
CMD [ "./run.sh" ,"-D", "FOREGROUND"]
