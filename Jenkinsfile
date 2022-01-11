node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t tomcat:jarr . '

  }
  stage('Run Image') {

      sh 'sudo docker run -d --name jarcontr -p 8989:8080 tomcat:jarr'
  }
  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook'
  }
}

