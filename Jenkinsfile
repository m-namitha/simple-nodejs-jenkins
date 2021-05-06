pipeline {
    agent {
        docker {
            image 'namitha1111/node-jenkins' 
            args '-p 80:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}              
