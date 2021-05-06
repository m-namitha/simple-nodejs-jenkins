node {
  def app
  stage('Build Docker Image') {
    checkout scm
    app = docker.build('namitha1111/node-jenkins')
  }
  
  stage('Publish to Docker Hub') {
    docker.withRegistry("https://index.docker.io/v1/","dockerhub") {
      app.push('latest')
    }
  }
  stage('Deploy to Production') {
    docker.withServer('tcp://production:2378','production') {
        sh 'docker run -d namitha1111/node-jenkins'
    }
  }
}                       
