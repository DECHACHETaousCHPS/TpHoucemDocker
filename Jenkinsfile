node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myapjarrr  . '
        

  }


  stage('Run Image') {

      sh 'sudo docker run -d  --name myapjarrr myapjarrr'
  }
  
 

  



  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook.yaml'
  }
}

