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
        sh "docker stop javawebapp"
        sh "docker rm javawebapp"
        sh "docker run -d --name javawebapp -p 9090:9090 ayyappa376/java-web-app"
    }
   }  
    
    }
       
}
 
