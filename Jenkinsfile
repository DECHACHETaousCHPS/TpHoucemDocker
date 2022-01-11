node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myapjarr  . '
        

  }


  stage('Run Image') {

      sh 'sudo docker run -d  --name myapjarr myapjarr'
  }
  
 

  



  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook'
  }
}

