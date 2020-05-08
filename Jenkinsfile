#!groovy
pipeline {
    agent none
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
 	        	withDockerRegistry([ harsha9199: "DockerHub", url: "" ])
 	        	{
 	        		sh 'docker push harshachow/calculator:latest'

 	      		}
 		    }
 		}
   }
 }
