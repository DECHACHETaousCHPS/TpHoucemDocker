node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myaplijarr . '

  }
  stage('Run Image') {

      sh 'sudo docker run -d --name myapplictrr  myaplijarr'
  }
  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook', sudo: true
  }
}

