node {

 stage('clone') {

    git 'https://github.com/DECHACHETaousCHPS/TpHoucemDocker.git'

 }

  stage('Build') {

      sh ' mvn -Dmaven.test.failure.ignore=true install '

 }

 

}

