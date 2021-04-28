FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y git virtualenv build-essential python-sphinx python-dev pkgconf libfreetype6-dev  libpq-dev libffi-dev devscripts python-setuptools python-all debhelper quilt python3-all dh-virtualenv default-libmysqlclient-dev python3-dev python3-pip
COPY start.sh /
RUN chmod 777 start.sh
RUN bash start.sh
CMD ["bash"]

