# Docker Image include ssh server to be used 


FROM ubuntu:latest

# update all repo
RUN apt-get update -y 

# install ssh server and sudo packages
RUN apt-get install openssh-server sudo -y && apt-get clean -y

# start ssh service
RUN service ssh start

# add user ansibleuser to be used later for ssh connection
RUN useradd -m ansibleuser

# create directory .ssh 
RUN mkdir /home/ansibleuser/.ssh

# copy authorized_keys which contain public key
COPY authorized_keys /home/ansibleuser/.ssh

# add ansibleuser to sudoers
RUN echo "ansibleuser ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers.d/ansibleuser

# make entrypoint to always run in background
#ENTRYPOINT [ "CMD", "tail -f /dev/null" ]
CMD tail -f /dev/null
# I don't have to specify EXPOSE or CMD because they're in my FROM
