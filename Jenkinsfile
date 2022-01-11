node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myapplicationjar  . '
        sh 'sudo docker tag myapplicationjar taousdechache/myapplicationjar:v1 '

  }
  stage('Push Image to docker hub') {

      sh 'sudo docker push taousdechache/myapplicationjar:v1 '
  }

  stage('Run Image') {

      sh 'sudo docker run -d taousdechache/myapplicationjar:v1 '
  }

  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook', sudo: true
  }
}

