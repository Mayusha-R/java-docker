pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url:'https://github.com/Mayusha-R/java-docker.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t Dockerfile .'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker push mayusharathod/java-app:v1'
            }
        }
        stage('Deploy Container') {
            steps {
                sh 'docker run -d -p 8089:8080 mayusharathod/java-app:v1'
            }
        }
    }
}
