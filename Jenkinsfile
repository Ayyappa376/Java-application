pipeline{
 agent any
 def mavenHome= tool name: "maven"
 stages{
  stage('checkout'){
   step{
    git 'https://github.com/Ayyappa376/Java-application.git'
   }
  }
  stage('build'){
   step{
    sh "docker build -t Dockerfile ayyappa376/java-web-app"
   }
  }
  stage('build image'){
   step{

   }
  }
  stage('docker push'){
   step{
   }
  }
 }
}
