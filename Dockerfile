FROM ubuntu
MAINTAINER ChrisLevi
RUN apt-get -y update
RUN apt-get install -y python-yaml python-jinja2 git ansible
RUN git clone http://github.com/chrislevi/tkl-homework.git /opt/ansible-httpd

ADD inventory/hosts /etc/ansible/hosts
WORKDIR /opt/ansible-httpd
EXPOSE 80 8080
CMD ["ansible-playbook","playbooks/httpd.yml","-c", "local"]



