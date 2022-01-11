node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build image') {

        sh 'sudo docker build -t tomcat:jar . '

  }
  stage('Run Image') {

      sh 'sudo docker run -d --name jarctr -p 8989:8080 tomcat:jar'
  }


}

