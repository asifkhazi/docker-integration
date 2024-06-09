pipeline {
	agent none
	tools {
		dockerTool 'docker'
	}
	environment {
		docker_user="asifkhazi"
	}
	stages {
		stage ('SCM checkout') {
			agent { label 'master' }
			steps {
				git branch:'main', url:'https://github.com/asifkhazi/docker-integration.git'
				sh 'docker --version'
			}
		}
	}
}
