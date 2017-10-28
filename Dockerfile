FROM ubuntu
MAINTAINER ChrisLevi
RUN apt-get -y update
RUN apt-get install -y git ansible
RUN git clone http://github.com/chrislevi/tkl-homework.git /tmp/ansible-httpd

WORKDIR /tmp/ansible-httpd

ENTRYPOINT ansible-playbook playbooks/httpd.yml -c local
EXPOSE 80 8080


