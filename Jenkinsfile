pipeline {
	agent none
	environment {
		docker_user="asifkhazi"
	}
	stages {
		stage ('SCM checkout') {
			agent { label 'master' }
			steps {
				git branch:'main', url:'https://github.com/asifkhazi/docker-integration.git'
			}
		}
		/*stage('SonarQube analysis') {
      			environment {
        			SCANNER_HOME = tool 'sonar-scanner'
      			}
      			steps {
        			withSonarQubeEnv('SonarQube Scanner') {
					sh 'mvn clean verify'
					sh '''${SCANNER_HOME}/bin/sonar-scanner \
                      				-Dsonar.projectKey=sonarqube-example \
  						-Dsonar.projectName='sonarqube-example' \
  						-Dsonar.host.url=http://18.61.81.218:9000 \
  						-Dsonar.token=sqp_f71a9634a9c08110611e0b17c404d423bb47bd41'''
        			}
     			 }
    		}*/
		stage ('Build and Create docker image') {
            	agent {
                	docker { image 'asifkhazi/tomcatjar' }
            	}
			steps {
				sh 'ls /usr/local/tomcat/webapps/'
			}
		}
	}
}
