pipeline {
   agent any
 

   stages {
      stage('Build') {
         steps {
         

            // Run Maven on a Unix agent.
             sh "mvn -Dmaven.test.failure.ignore=true deploy sonar:sonar"

           
         }

         
      }
   }
}
