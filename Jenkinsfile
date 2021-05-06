node {
  def app
  stage('Build Docker Image') {
    sh 'docker pull namitha1111/node-jenkins'
  }
  
  stage('Deploy to Production') {
    docker.withServer('tcp://production:2376','production') {
        sh 'docker run -d namitha1111/node-jenkins'
    }
  }
}                       
