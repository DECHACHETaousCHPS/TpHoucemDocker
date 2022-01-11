node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myapplicationjar  . '
        sh 'sudo docker tag myapplicationjar taousdechache/myapplicationjar:latest '

  }

  stage('Run Image') {

      sh 'sudo docker run -d -p 666:8686  taousdechache/myapplicationjar:latest '
  }

   stage('Login dockerhub') {

       withCredentials([string(credentialsId: 'Dockerhub', variable: 'Dockerhub')]) {
       sh' sudo docker login -u taousdechache -p ${Dockerhub}'
   }

  }
 
   stage('Push Image to docker hub') {

      sh 'sudo docker push taousdechache/myapplicationjar:latest '
  }

  

  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook.yaml', sudo: true
  }
}

