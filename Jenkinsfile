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
				sh 'docker pull nginx'
			}
		}
	}
}
