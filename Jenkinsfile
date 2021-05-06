node {
  def app
  stage('Build Docker Image') {
    checkout scm
    app = docker.build('namitha1111/node-jenkins')
  }
}                       
