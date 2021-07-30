pipeline {
    agent any

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
