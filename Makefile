# Do not change this
#

### Docker build
build_ubuntu16: #Build docker image .Dockerfile for build image.
	docker build image/ubuntu16/Docker/.
#	docker run -v packages:/root/packages ubuntu:16.04 /bin/bash /root/packages/ubuntu16/test.sh
build_ubuntu18: #Build docker image .Dockerfile for build image.
	docker build image/ubuntu18/Docker/.
build_ubuntu20: #Build docker image .Dockerfile for build image.
	docker build image/ubuntu20/Docker/.
build_centos7: #Build docker image .Dockerfile for build image.
	docker build image/centos7/Docker/.
build_centos8: #Build docker image .Dockerfile for build image.
	docker build image/centos8/Docker/.

### Vagrant ###
# test stable repo
vagrant_stable: ubuntu16_stable ubuntu18_stable ubuntu20_stable centos7_stable centos8_stable

# test devel repo
vagrant_devel: ubuntu16_devel ubuntu18_devel ubuntu20_devel centos7_devel centos8_devel


# clean
clean_stable_vagrant: clean_stable_ubuntu16 clean_stable_ubuntu18 clean_stable_ubuntu20 clean_stable_centos7 clean_stable_centos8

### Stable ###
clean_stable_ubuntu16:
	cd image/ubuntu16/stable && vagrant halt && vagrant destroy -f
clean_stable_ubuntu18:
	cd image/ubuntu18/stable && vagrant halt && vagrant destroy -f
clean_stable_ubuntu20:
	cd image/ubuntu20/stable && vagrant halt && vagrant destroy -f
clean_stable_centos7:
	cd image/centos7/stable && vagrant halt && vagrant destroy -f
clean_stable_centos8:
	cd image/centos8/stable && vagrant halt && vagrant destroy -f


### Devel ###
clean_devel_ubuntu16:
	cd image/ubuntu16/devel && vagrant halt && vagrant destroy -f
clean_devel_ubuntu18:
	cd image/ubuntu18/devel && vagrant halt && vagrant destroy -f
clean_devel_ubuntu20:
	cd image/ubuntu20/devel && vagrant halt && vagrant destroy -f
clean_devel_centos7:
	cd image/centos7/devel && vagrant halt && vagrant destroy -f
clean_devel_centos8:
	cd image/centos8/devel && vagrant halt && vagrant destroy -f


# vagrant centos7
centos7_stable:
	cd image/centos7/stable && vagrant up
centos7_devel:
	cd image/centos7/devel && vagrant up
centos7_2.18.1-1:
	cd image/centos7/2.18.1-1/ && vagrant up
centos7_2.23.5-1:
	cd image/centos7/2.23.5-1/ && vagrant up
centos7_3.0.1-2:
	cd image/centos7/3.0.1-2/ && vagrant up
centos7_3.0.2-2:
	cd image/centos7/3.0.2-2/ && vagrant up
centos7_3.1.1-2:
	cd image/centos7/3.1.1-2/ && vagrant up
centos7_3.1.2-1:
	cd image/centos7/3.1.2-1/ && vagrant up
centos7_3.2.2-1:
	cd image/centos7/3.2.2-1/ && vagrant up
centos7_3.3.3-1:
	cd image/centos7/3.3.3-1/ && vagrant up
centos7_3.4.1-1:
	cd image/centos7/3.4.1-1/ && vagrant up
centos7_3.5.1-1:
	cd image/centos7/3.5.1-1/ && vagrant up

# vagrant centos8
centos8_stable:
	cd image/centos8/stable && vagrant up
centos8_devel:
	cd image/centos8/devel && vagrant up
centos8_3.4.1-1:
	cd image/centos8/3.4.1-1/ && vagrant up
centos8_3.5.1-1:
	cd image/centos8/3.5.1-1/ && vagrant up


# vagrant ubuntu16 xenial
ubuntu16_stable:
	cd image/ubuntu16/stable && vagrant up
ubuntu16_devel:
	cd image/ubuntu16/devel && vagrant up
ubuntu16_3.2.1-1:
	cd image/ubuntu16/3.2.1-1 && vagrant up
ubuntu16_3.2.2-1:
	cd image/ubuntu16/3.2.2-1 && vagrant up
ubuntu16_3.3.2-1:
	cd image/ubuntu16/3.3.2-1 && vagrant up
ubuntu16_3.3.3-1:
	cd image/ubuntu16/3.3.3-1 && vagrant up
ubuntu16_3.4.1-1:
	cd image/ubuntu16/3.4.1-1 && vagrant up
ubuntu16_3.5.1-1:
	cd image/ubuntu16/3.5.1-1 && vagrant up

# vagrant ubuntu18 bionic
ubuntu18_stable:
	cd image/ubuntu18/stable && vagrant up
ubuntu18_devel:
	cd image/ubuntu18/devel && vagrant up
ubuntu18_3.2.1-1:
	cd image/ubuntu18/3.2.1-1 && vagrant up
ubuntu18_3.2.2-1:
	cd image/ubuntu18/3.2.2-1 && vagrant up
ubuntu18_3.3.1-1:
	cd image/ubuntu18/3.3.1-1 && vagrant up
ubuntu18_3.3.2-1:
	cd image/ubuntu18/3.3.2-1 && vagrant up
ubuntu18_3.3.3-1:
	cd image/ubuntu18/3.3.3-1 && vagrant up
ubuntu18_3.4.1-1:
	cd image/ubuntu18/3.4.1-1 && vagrant up
ubuntu18_3.5.1-1:
	cd image/ubuntu18/3.5.1-1 && vagrant up

# vagrant ubuntu20 focal
ubuntu20_stable:
	cd image/ubuntu20/stable && vagrant up
ubuntu20_devel:
	cd image/ubuntu20/devel && vagrant up
ubuntu20_3.5.1-1:
	cd image/ubuntu20/3.5.1-1 && vagrant up

