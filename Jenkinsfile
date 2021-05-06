node {
    stage('Build') {
        docker {
            image 'namitha1111/node-jenkins' 
            args '-p 80:3000' 
        }
    }
    stage('Deploy') { 
        steps {
            sh 'npm install' 
        }
    }
    
}              
