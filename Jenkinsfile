pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11' 
            args '-v /var/jenkins_home/workspace/Spring-PetClinic-Pipelinepipeline:/root/Spring-Petclinic' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh './mvnw package'
                sh 'java -jar target/*.jar'
            }
        }
    }
}
