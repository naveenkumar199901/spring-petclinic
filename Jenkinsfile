pipeline {
  agent any
  environment {
    def dockerImage
    def dockerImageTag = "petclinic${env.BUILD_NUMBER}"
  }
  stages {
    stage('Build and Scan') {
      parallel {
        stage('PackageApplication') {

          steps {

            withSonarQubeEnv('SonarQueb') {

              sh "./mvnw -Dmaven.test.failure.ignore=true clean package sonar:sonar"
               sh "docker build . -f Dockerfile -t ${env.JOB_BASE_NAME}:tag"
              sh "docker run --name petclinic -d -p 2222:2222 ${env.JOB_BASE_NAME}:tag "

            }
          }

        }
      }
    }
  }
  }
