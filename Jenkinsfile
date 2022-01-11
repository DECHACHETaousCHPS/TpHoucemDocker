node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t monappjar . '

  }
  stage('Run Image') {

      sh 'sudo docker run -d --name monappjarctr  monappjar'
  }
  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook'
  }
}

