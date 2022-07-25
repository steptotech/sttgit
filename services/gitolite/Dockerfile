##############################
# OS
##############################
FROM debian:latest
RUN apt-get update
RUN apt-get upgrade -y

##############################
# Tools
##############################
RUN apt-get install -y software-properties-common
RUN apt-get install -y build-essential
RUN apt-get install -y wget nano curl locales
RUN locale-gen en_US.UTF-8

##############################
# openssh
##############################
RUN apt-get install -y openssh-server
RUN sed -i 's/^AcceptEnv LANG LC_\*$//g' /etc/ssh/sshd_config

##############################
# git
##############################
RUN apt-get install -y git

##############################
# gitolite
##############################
RUN adduser --system --group --shell /bin/bash git
RUN su git -c "mkdir /home/git/bin"
RUN su git -c "mkdir -p /home/git/.gitolite/logs"
RUN cd /home/git; su git -c "git clone https://github.com/sitaramc/gitolite";
RUN cd /home/git; su git -c "gitolite/install -ln";
COPY admin.pub /tmp/
