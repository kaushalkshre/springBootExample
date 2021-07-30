pipeline {
    agent any

    tools{
        maven 'Maven 3.8. 1'
        jdk 'jdk8'
    }

    stages {
        stage ('Initialize') {
            steps {
                echo "intializing the app"
            }
        }

        stage ('Build') {
		steps{
	          sh 'mvn clean compile install'
		}	
         }
            
        stage('Test'){
        	steps {
        		echo "testing the app"
        	}
        }
        	
       	stage('Deploy docker image'){
		steps{
			echo "deploying the app"
        }
        
	
       
        }
    }
}
