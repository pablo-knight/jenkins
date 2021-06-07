FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y wget curl
RUN wget http://de.archive.ubuntu.com/ubuntu/pool/universe/d/dh-virtualenv/dh-virtualenv_1.2.1-1_all.deb
# continue executing even if commands fails
RUN dpkg -i dh-virtualenv_1.2.1-1_all.deb || true && apt-get install -y -f
RUN apt-get update && apt-get install -y git virtualenv build-essential python-dev pkgconf libfreetype6-dev libpq-dev libffi-dev devscripts python-setuptools python-all debhelper python3-all default-libmysqlclient-dev python3-dev quilt python3-pip sphinx-common sphinx-doc reprepro vim rsync jq
COPY start.sh /
RUN chmod 777 start.sh
RUN bash start.sh
CMD ["bash"]

