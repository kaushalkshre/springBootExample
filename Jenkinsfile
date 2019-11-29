pipeline {
    agent any

    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage ('Build') {
	            steps {
	                sh 'mvn clean install' 
	            }           
         }
            
        stage('Docker image build'){
        	steps {
        		sh 'docker build -t firstapp:1.0.0 .'
        	}
        }
        	
       	stage('Deploy docker image'){
       		steps{
       			sh 'docker run -d -p 7070:7070 firstapp:1.0.0'
       		}
        }
        
        stage('Health check'){
        	steps {
        	 sh 'curl http://localhost:7070/actuator/health'
        	}
        }
    }
}
