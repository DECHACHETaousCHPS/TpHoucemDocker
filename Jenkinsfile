node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myapplication  . '
        sh 'sudo docker tag myapplication taousdechache/myapplicationjarr:latest '

  }

  stage('Run Image') {

      sh 'sudo docker run -d -p 8888:8080  taousdechache/myapplicationjarr:latest '
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

