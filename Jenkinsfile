pipeline {
  agent any
  environment {
    SCANNER_HOME= tool 'SonarQubeScanner'
  }
  stages {
    stage ('SCM Checkout') {
      steps {
        git branch: master, url: 'https://github.com/asifkhazi/docker-integration.git'
      }
    }
  }
}
