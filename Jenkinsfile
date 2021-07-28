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
	           echo "building the app"  
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
