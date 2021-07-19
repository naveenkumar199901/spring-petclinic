pipeline {
   agent any
 

   stages {
     stage('Build and Scan') {
parallel {
                          stage('PackageApplication') {
               
                             steps {
		 
					
					withSonarQubeEnv('SonarQueb') {  
                 				
                       sh "mvn -Dmaven.test.failure.ignore=true deploy sonar:sonar"
		            
		     

              }               
       }
                 
                
            }
        }
    }
   }
}
