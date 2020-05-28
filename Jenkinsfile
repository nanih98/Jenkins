pipeline {

  agent { label 'jenkins-jenkins-slave' }

  stages {

    stage('Checkout Source') {
      steps {
        git url:'https://github.com/nanih98/Jenkins.git'
      }
    }
   stage('Check nodes') {
      steps{
        script {
          sh("kubectl get nodes")
          sh("kubectl create -f nginx.yaml")
        }
      }
    }
   /* stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nginx.yaml", kubeconfigId: "kubeconfig")
        }
      }
    }*/

  }

}
