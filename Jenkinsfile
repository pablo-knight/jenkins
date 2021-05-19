pipeline {
    agent any

    stages {
        stage ('Build Ubuntu16') {

            steps {
		echo 'building xenial package'
                withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                             sh 'make build_ubuntu16'
                }
            }
        }

        stage ('Build Ubuntu18') {

            steps {
		echo 'building bionic package'
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_ubuntu18'
                }
            }
        }

        stage ('Build Ubuntu20') {

            steps {
		echo 'building focal package'
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_ubuntu20'
                }
            }
        }
        
	stage ('Build Centos7') {

            steps {
		echo 'building centos7 package'
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_centos7'
                }
            }
        }
        
        stage ('Build Centos8') {

            steps {
		echo 'building centos8 package'
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_centos8'
                }
             }
        }

     }
}
