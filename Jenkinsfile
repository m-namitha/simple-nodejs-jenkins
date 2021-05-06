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

//docker swarm join --token SWMTKN-1-45e3umrmgjoh5dktk3ho3n70a5z49o5gjsxcnog07041xnpd7r-5tsk2xb37etb2w0gwxpewdc7v 10.0.2.15:2377
