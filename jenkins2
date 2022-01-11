node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myapplicationjar  . '
        sh 'sudo docker tag myapplicationjar taousdechache/myapplicationjar:v1 '

  }

  stage('Run Image') {

      sh 'sudo docker run -d -p 666:8686  taousdechache/myapplicationjar:v1 '
  }

   stage('Login dockerhub') {

       withCredentials([string(credentialsId: 'Dockerhub', variable: 'Dockerhub')]) {
       sh' sudo docker login -u taousdechache -p ${Dockerhub}'
   }

  }
 
   stage('Push Image to docker hub') {

      sh 'sudo docker push taousdechache/myapplicationjar:v1 '
  }

  

  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook.yaml', sudo: true
  }
}

