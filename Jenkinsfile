pipeline {
  
  environment {
    registry = "550639688928.dkr.ecr.eu-west-1.amazonaws.com/k8s"
    dockerImage = ""
  }
  
  agent { label 'kubepod' }

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/nanih98/Jenkins.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

  }

}
