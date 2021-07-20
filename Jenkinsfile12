pipeline {
   agent any
 

   stages {
     stage('Build and Scan') {
parallel {
                          stage('PackageApplication') {
               
                             steps {
		 
					
					withSonarQubeEnv('SonarQueb') {  
                 				
                       sh "./mvnw -Dmaven.test.failure.ignore=true clean package sonar:sonar"
                       sh "cp -r target/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar target/app.jar"
                        sh "docker build . -f Dockerfile -t ${env.JOB_BASE_NAME}:${env.BUILD_NUMBER}"
		            
		     

              }               
       }
                 
                
            }
        }
    }
   }
}
