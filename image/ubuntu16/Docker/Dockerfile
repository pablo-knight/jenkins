FROM ubuntu:16.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y git virtualenv build-essential python-sphinx python-dev pkgconf libfreetype6-dev libpq-dev libffi-dev devscripts python-setuptools python-all debhelper python3-all libmysqlclient-dev quilt python3-dev dh-virtualenv python-pip reprepro vim rsync jq
COPY start.sh /
RUN chmod 777 start.sh
RUN bash start.sh
CMD ["bash"]
