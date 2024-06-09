pipeline {
	agent {
		docker {
			image 'c30aa3d6fb655b3613607e8b42caa5ad4fe0ce4b'
		}
	}
	stages {
		stage ('SCM Checkout') {
			steps {
				git branch: 'main', url: 'https://github.com/asifkhazi/docker-integration.git'
				sh 'echo "This is from inside container"'
			}
		}
	}
}
