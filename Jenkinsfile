pipeline{
agent any
tools{
maven 'maven'

}
    stages{
     stage('checkout'){
      steps{
       git 'https://github.com/Ayyappa376/Java-application.git'
     }
    }
   stage('build'){
    steps{
     sh "mvn clean package"
    }
   }
   stage('build image'){
    steps{
     sh "docker build -t ayyappa376/java-web-app ."
    }
   }
   stage('push image'){
    steps{
    withCredentials([string(credentialsId: '', variable: 'docker_pwd')]) {
        sh "docker login -u ayyappa376 -p ${docker_pwd}"
        sh "docker push ayyappa376/java-web-app "
     }
    }
   }    
    
    }
       
}
 
