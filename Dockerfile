FROM daocloud.io/library/jenkins
USER root
RUN apt-get update && apt-get install -y ansible && apt-get install -y sshpass
RUN sed -i 's/#host_key_checking/host_key_checking/g' /etc/ansible/ansible.cfg
USER jenkins
