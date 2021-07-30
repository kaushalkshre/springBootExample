pipeline {
    agent any

    tools{
        maven 'Maven 3.6.3'
        jdk 'jdk8'
    }

    stages {
        stage ('Initialize') {
            steps {
                echo "intializing the app"
                 sh '''
                             echo "PATH = ${PATH}"
                             echo "M2_HOME = ${M2_HOME}"
                    '''
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
