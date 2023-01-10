pipeline {
    agent any
    stages {
        stage('docker build') {
            steps {
                sh "docker stop \$(docker ps -aq)"
                sh "docker rm \$(docker ps -aq)"
                sh "docker ps"
                sh "docker pull openjdk:18-jdk-alpine"
                sh "docker build -t pruebaspring ."
                sh "docker tag pruebaspring vicarbar/spring:${BUILD_NUMBER}"
                sh "docker images | grep pruebaspring"
                sh "docker run -d -p 8080:8080 pruebaspring"
            }
        }
        stage('docker push') {
            steps {
                sh "docker push vicarbar/spring:${BUILD_NUMBER}"
            }
        }
    }
}



