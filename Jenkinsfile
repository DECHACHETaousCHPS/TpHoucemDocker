node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t monapplijar . '

  }
  stage('Run Image') {

      sh 'sudo docker run -d --name monappjarcotr  monapplijar'
  }
  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook'
  }
}

