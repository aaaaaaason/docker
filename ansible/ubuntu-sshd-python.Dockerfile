from rastasheep/ubuntu-sshd:latest

RUN apt-get update && apt-get install -y python

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]