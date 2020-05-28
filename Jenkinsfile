pipeline {

  agent { label 'jenkins-jenkins-slave' }

  stages {

    stage('Checkout Source') {
      steps {
        git url:'https://github.com/nanih98/Jenkins.git'
      }
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nginx.yaml", kubeconfigId: "k8s-holacaracola")
        }
      }
    }

  }

}
