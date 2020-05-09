#!groovy
pipeline {
    agent any
   stages {
    stage('Maven Install') {
      agent {
       docker {
         image 'maven:3.5.0'
     }
  }
  steps {
       sh 'mvn clean install'
       }
     }
   stage('Docker Build') {
    agent any
    steps {
      sh 'docker build -t harshachow/calculator:latest .'
      }
    }
    stage('PUBLISH to DockerHub')
 		{
 		    steps
 		    {
 		    
 		    withCredentials([usernamePassword( credentialsId: 'harsha9199', usernameVariable: 'USER', passwordVariable: 'PASSWORD')]) {
        sh "docker login -u $USER -p $PASSWORD"
        docker.withRegistry("harsha9199") {
            // Push your image now
            sh "docker push harshachow/calculator:latest"
   	 	    }
   		 }
 		    }
 		}
   }
 }
