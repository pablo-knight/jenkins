pipeline {
    agent any

    stages {
        stage ('Build Ubuntu16') {

            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                             sh 'make build_ubuntu16'
                }
            }
       }

        stage ('Build Ubuntu18') {

            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_ubuntu18'
                }
            }
       }

        stage ('Build Ubuntu20') {

            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_ubuntu20'
                }
            }
       }
        
	stage ('Build Centos7') {

            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_centos7'
                }
            }
       }
        
        stage ('Build Centos8') {

            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){
                             sh 'make build_centos8'
                }
            }
       }

    }
}
