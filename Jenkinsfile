node {
  checkout scm
  def app
  stage('Build Docker Image') {
    app = docker.build('samp/node-jenkins')
  }
  
  samp('Publish to Docker Hub') {
     docker.withRegistry("https://index.docker.io/v1", "dockerhub") {
          app.push()
     }
  }
  stage('Deploy to Production') {
    docker.withServer('tcp://production:2376','production') {
        sh 'docker run --name node-jenkins -p 80:3000 -d samp/node-jenkins'
    }
  }
}                       
