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
        sh "docker login -u ayyappa376 -p ayyappa@76"
        sh "docker push ayyappa376/java-web-app "
    }
   }  
   stage('run container'){
    steps{
        def dockerRun = docker run -d --name javawebapp -p 800:8080 ayyappa376/java-web-app
        sshagent(['docker_server']) {
           sh 'ssh -o StrictHostKeyChecking=no ubuntu@13.233.154.199 docker stop javawebapp || true'
           sh 'ssh  ubuntu@13.233.154.199 docker rm javawebapp || true'
           sh 'ssh  ubuntu@13.233.154.199 docker rmi -f  $(docker images -q) || true'
           sh "ssh  ubuntu@13.233.154.199 ${dockerRun}" 
         } 
    }
   }  
    
    }
       
}
 
