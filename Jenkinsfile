pipeline {
  agent any
  tools {
    maven 'maven3'
  }
  environment {
    SCANNER_HOME= tool 'SonarQubeScanner'
  }
  stages {
    stage ('SCM Checkout') {
      steps {
        git branch: 'master', url: 'https://github.com/asifkhazi/docker-integration.git'
      }
    }
    stage ('Build') {
      steps {
        sh 'mvn clean install'
      }
    }
    stage ('SonarQube Analysis') {
      	steps {
        	withSonarQubeEnv('SonarQubeServer') {
			sh '''${SCANNER_HOME}/bin/sonar-scanner \
              			-Dsonar.projectKey=docker-integration \
  				-Dsonar.projectName=docker-integration'''
        		}
      		}
    	}
	stage("Quality Gate") {
            steps {
              timeout(time: 1, unit: 'HOURS') {
                waitForQualityGate abortPipeline: true
              }
            }
        }
  }
}
