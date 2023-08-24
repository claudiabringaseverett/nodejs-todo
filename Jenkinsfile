pipeline {
    agent any

    stages {
        stage('Sonarqube Scan') {
            steps {
                echo 'Scanning ...'
            }
        }
        stage('Build App') {
            steps {
                sh 'npm -v'
                sh 'node -v'
                sh 'npm install'
            }
        }
        stage('Build Container') {
            steps {
                echo 'Hello from test stage'
            }
        }
        stage('Push Container') {
            steps {
                echo 'Hello from test stage'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Hello from release stage'
            }
        }
    }
}