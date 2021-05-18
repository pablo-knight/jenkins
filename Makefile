# Do not change this
#
VERSION="3.5.2"
### Docker build
build_ubuntu16: #Build docker image .Dockerfile for build image.
	docker build image/ubuntu16/Docker/.
run_ubuntu16: #Build docker image .Dockerfile for build image.
	docker run -dit image/ubuntu16/Docker/.
#	docker run -v packages:/root/packages ubuntu:16.04 /bin/bash /root/packages/ubuntu16/test.sh
build_ubuntu18: #Build docker image .Dockerfile for build image.
	docker build image/ubuntu18/Docker/.
build_ubuntu20: #Build docker image .Dockerfile for build image.
	docker build image/ubuntu20/Docker/.
build_centos7: #Build docker image .Dockerfile for build image.
	docker build image/centos7/Docker/.
build_centos8: #Build docker image .Dockerfile for build image.
	docker build image/centos8/Docker/.
