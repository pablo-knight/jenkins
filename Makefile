# Do not change this
#
build_ubuntu16: #Build docker image .Dockerfile for build image.
	docker build -t u16_build image/ubuntu16/Docker/.
build_ubuntu18: #Build docker image .Dockerfile for build image.
	docker build -t u18_build image/ubuntu18/Docker/.
build_ubuntu20: #Build docker image .Dockerfile for build image.
	docker build -t u20_build image/ubuntu20/Docker/.
build_centos7: #Build docker image .Dockerfile for build image.
	docker build -t c7_build image/centos7/Docker/.
build_centos8: #Build docker image .Dockerfile for build image.
	docker build -t c8_build image/centos8/Docker/.
