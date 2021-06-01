FROM centos:7

ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]

RUN yum update -y
RUN yum install -y git rpm-build libxml2-devel freetype-devel python-devel libxslt-devel zlib-devel openssl-devel python-virtualenv gcc libffi-devel createrepo byacc.x86_64 python-ply.noarch selinux-policy selinux-policy-devel vim createrepo rsync
RUN yum groupinstall -y "Development Tools"
COPY start.sh /
RUN chmod 777 start.sh
RUN bash start.sh
