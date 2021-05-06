pipelile {
  agent none 
    stages {
      stage('Build Docker Image') {
        agent any
        steps {
          sh 'docker build -t namitha1111/node-jenkins .'
        }
      }
        
      stage('Deploy to Production') {
        agent any
        docker.withServer('tcp://production:2376','production') {
          sh 'docker run -i -t namitha1111/node-jenkins'
        }
      }
        
    }
}                       
