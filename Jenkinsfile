pipeline{
 agent any
  def mavenHome =  tool name: "Maven", type: "maven" 
    stages{
     stage('checkout'){
      steps{
       git 'https://github.com/Ayyappa376/Java-application.git'
     }
    }
   stage('build'){
    steps{
     sh "${mavenHome}/bin/mvn clean package"
    }
   }
   stage('build image'){
    steps{
     sh "docker build -t Dockerfile ayyappa376/java-web-app"
    }
   }
 }
}
 
