pipeline {
  
  agent any

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
