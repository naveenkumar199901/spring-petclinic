pipeline {
   agent any
 

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
   }
}
