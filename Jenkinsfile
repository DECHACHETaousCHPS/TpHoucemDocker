node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t myaplijar . '

  }
  stage('Run Image') {

      sh 'sudo docker run -d --name myapplictr  myaplijar'
  }
  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook'
  }
}

