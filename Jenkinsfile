node {
  checkout scm
  def app
  stage('Build Docker Image') {
    app = docker.build('samp/node-jenkins')
  }
  
  stage('Deploy to Production') {
    docker.withServer('tcp://production:2376','production') {
        sh 'docker run --name node-jenkins -p 80:3000 -d samp/node-jenkins'
    }
  }
}                       
