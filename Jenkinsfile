node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t tomcat:JAR . '

  }
  stage('Run Image') {

      sh 'sudo docker run -d --name jarcontainr -p 8989:8686 tomcat:JAR'
  }
  stage('Ansible') {

       ansiblePlaybook become: true, playbook: 'dockerplaybook'
  }
}

