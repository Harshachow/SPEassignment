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
      sh 'docker build -t harsha9199/calculator:latest .'
      }
    }
    stage('PUBLISH to DockerHub')
 		{
 		    steps
 		    {    
 	        	withDockerRegistry([ credentialsId: "dockerhub", url: "" ])
 	        	{
 	        		sh 'docker push harsha9199/calculator:latest'

 	      		}
 		    }
 		}
   }
 }
