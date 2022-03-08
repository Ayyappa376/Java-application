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
   stages('run container'){
    steps('Run Docker Image In Dev Server'){
        
        def dockerRun = ' docker run  -d -p 8080:8080 --name javawebapp ayyappa376/java-web-app '
         
         sshagent(['DOCKER_SERVER']) {
          sh 'ssh -o StrictHostKeyChecking=no ubuntu@ docker stop java-web-app || true'
          sh 'ssh  ubuntu@13.233.154.199 docker rm javawebapp || true'
          sh 'ssh  ubuntu@13.233.154.199 docker rmi -f  $(docker images -q) || true'
          sh "ssh  ubuntu@13.233.154.199 ${dockerRun}"
       }
       
    }
   }  
    
    }
       
}
 
