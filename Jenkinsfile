pipeline {
   agent any
 

   stages {
      stage('Build') {
         steps {
         

            // Run Maven on a Unix agent.
            sh "./mvnw -Dmaven.test.failure.ignore=true clean package"

           
         }

         
      }
   }
}
