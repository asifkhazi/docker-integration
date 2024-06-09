pipeline {
	agent none
	tools {
		dockerTool 'docker'
	}
	stages {
		stage ('SCM Checkout') {
			agent {
				label 'master'
			}
			steps {
				git branch: 'main', url: 'https://github.com/asifkhazi/docker-integration.git'
				sh 'docker --version'
				sh 'sudo chmod 777 /var/run/docker.sock'
				sh 'docker pull nginx'
			}
		}
	}
}
