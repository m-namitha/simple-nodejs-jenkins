node {
  def app
  stage('Build Docker Image') {
    checkout scm
    app = docker.build('web/sample-run-jenkins')
  }
}                       
