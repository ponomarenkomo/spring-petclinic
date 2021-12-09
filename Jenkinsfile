pipeline {
    agent {
        docker {
            image 'maven:3.8.4-openjdk-11' 
            args '-v /var/jenkins_home/workspace/Spring-PetClinic-Pipeline/:/root/Spring-PetClinic-Pipeline' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh './mvnw package' 
            }
        }
    }
}
