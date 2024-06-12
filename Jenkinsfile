pipeline {
  agent any
  tools {
    toolType 'SonarQubeScanner'
  }
  stages {
    stage ('SCM Checkout') {
      steps {
        git branch: master, url: 'https://github.com/asifkhazi/docker-integration.git'
      }
    }
  }
}
