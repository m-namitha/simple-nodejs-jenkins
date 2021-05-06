pipelile {
  agent any 
    stages {
      
      stage('Build Docker Image') {
        step {
          sh 'docker build -t namitha1111/node-jenkins .'
        }
        
      stage('Deploy to Production') {
        docker.withServer('tcp://production:2376','production') {
          sh 'docker run -i -t namitha1111/node-jenkins'
        }
      }
        
    }
  
}                       
