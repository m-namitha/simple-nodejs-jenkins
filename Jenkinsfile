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

//docker swarm join --token SWMTKN-1-19im54gai4y1ijj0xsy7a8b9i5yz8big3hs1t5xn9xg8s3k8v4-58huhz1kmzvs7k1dodf0l3qau 10.0.2.15:2377
//docker swarm join --token SWMTKN-1-5cdg9z0llzh9hjfcnou80uoweu0zsdurb95fth860j6d4wimgv-d3fy4i7srram8wydl7f0cxfkf 10.0.2.15:2377
