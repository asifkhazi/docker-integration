pipeline {
  agent any
  tools {
    sonar-scanner 'SonarQubeScanner'
  }
  stages {
    stage ('SCM Checkout') {
      steps {
        git branch: master, url: 'https://github.com/asifkhazi/docker-integration.git'
      }
    }
  }
}
