pipeline {
   agent any
    def dockerImage
	def dockerImageTag = "petclinic${env.BUILD_NUMBER}"

   stages {
     stage('Build and Scan') {
parallel {
                          stage('PackageApplication') {
               
                             steps {
		 
					
					withSonarQubeEnv('SonarQueb') {  
                 				
                       sh "./mvnw -Dmaven.test.failure.ignore=true clean package sonar:sonar"
                       
		            
		     

              }               
       }
                 
                
            }
        }
    }
	
	
	  stage('Deploy Docker Image'){
	      
	      
			
	      echo "Docker Image Tag Name: ${dockerImageTag}"
		  
		  sh "docker stop petclinic"
		  
		  sh "docker rm petclinic"
		  
		  sh "docker run --name petclinic -d -p 2222:2222 petclinic:${env.BUILD_NUMBER}"
		  
		  
	       }
   }
}
