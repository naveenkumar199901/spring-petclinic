node {
	    def dockerImage
	   
	 
	    def dockerImageTag = "devopsexample${env.BUILD_NUMBER}"
	    
	    	  
	    stage('Build Project') {
	      
	       //sh "./mvnw -Dmaven.test.failure.ignore=true clean package sonar:sonar"
                     sh "mvn clean package sonar:sonar"
	    }
			
	    stage('Build Docker Image') {
	     
	      dockerImage = docker.build("devopsexample:${env.BUILD_NUMBER}")
	    }
	   
	    stage('Deploy Docker Image'){
	      
	      
			
	      echo "Docker Image Tag Name: ${dockerImageTag}"
		  
		  sh "docker stop devopsexample"
		  
		  sh "docker rm devopsexample"
		  
		  sh "docker run --name devopsexample -d -p 2222:2222 devopsexample:${env.BUILD_NUMBER}"
		  
		  
	       }
	      
	    }
