pipeline {
	agent { dockerfile true }
	stages {
		stage ('SCM Checkout') {
			steps {
				git branch: 'main', url: 'https://github.com/asifkhazi/docker-integration.git'
			}
		}
	}
}
