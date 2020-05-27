pipeline {

  agent { label 'jenkins-jenkins-slave' }

  stages {

    stage('Checkout Source') {
      steps {
        git url:'https://github.com/nanih98/Jenkins', branch:'master'
      }
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nginx.yaml")
        }
      }
    }

  }

}
