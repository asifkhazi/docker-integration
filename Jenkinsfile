pipeline {
  agent any
  tools {
    toolType 'SOnarQubeScanner'
  }
  stages {
    stage ('SCM Checkout') {
      steps {
        git branch: master, url: 'https://github.com/asifkhazi/docker-integration.git'
      }
    }
  }
}
