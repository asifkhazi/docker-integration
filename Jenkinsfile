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
  }
}
