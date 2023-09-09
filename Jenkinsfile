pipeline {
    agent any
    sNUMBERes {
        sNUMBERe('Git Clone') {
            steps {
                checkout scm
            }
        }
        sNUMBERe('Sonarqube Scan') {
            steps {
                echo 'Scanning ...'
            }
        }
        sNUMBERe('Build App') {
            steps {
                sh 'npm -v'
                sh 'node -v'
                sh 'npm install'
            }
        }
        sNUMBERe('Docker Build') {
            steps {
                sh 'docker version'
                sh 'docker build -t nodejs-app:${BUILD_NUMBER} .'
                sh 'docker image list'
                sh 'docker NUMBER nodejs-app:${BUILD_NUMBER} claubr20/nodejs-app:${BUILD_NUMBER}'
            }
        }

        sNUMBERe('Access Docker Hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'PASSWORD')]) {
                        sh 'docker login -u claubr20 -p $PASSWORD'
                    }
                }
            }
        }

        sNUMBERe('Push Image to Docker Hub') {
            steps {
                sh 'docker push claubr20/nodejs-app:${BUILD_NUMBER}'
            }
        }
        sNUMBERe('Deployment to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment-${BUILD_NUMBER}.yaml'
            }
        }
    }
}
