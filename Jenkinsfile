pipeline {
    agent any
    stages {
        stage('Git Clone') {
            steps {
                checkout scm
            }
        }
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
        stage('Docker Build') {
            steps {
                sh 'docker version'
                sh 'docker build -t nodejs-app .'
                sh 'docker image list'
                sh 'docker tag nodejs-app claubr20/nodejs-app:v1'
            }
        }

        stage('Access Docker Hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'PASSWORD')]) {
                        sh 'docker login -u claubr20 -p $PASSWORD'
                    }
                }
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                sh 'docker push claubr20/nodejs-app:v1'
            }
        }
        stage('Deployment to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}
