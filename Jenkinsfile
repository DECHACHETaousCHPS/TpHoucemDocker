node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myapplicationjarr  . '
        sh 'sudo docker tag myapplicationjarr taousdechache/myapplicationjarr:latest '

  }

  stage('Run Image') {

      sh 'sudo docker run -d -p 666:8686  taousdechache/myapplicationjarr:latest '
  }

   stage('Login dockerhub') {

       withCredentials([string(credentialsId: 'Dockerhub', variable: 'Dockerhub')]) {
       sh' sudo docker login -u taousdechache -p ${Dockerhub}'
   }

  }
 
   stage('Push Image to docker hub') {

      sh 'sudo docker push taousdechache/myapplicationjarr:latest '
  }

  

  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook.yaml', sudo: true
  }
}

