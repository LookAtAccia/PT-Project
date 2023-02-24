FROM kalilinux/kali-rolling
RUN apt-get update && apt-get upgrade -y
RUN apt-get install hydra -y
RUN apt-get install openssh-server -y
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:toor' | chpasswd
ENTRYPOINT service ssh restart && /bin/bash