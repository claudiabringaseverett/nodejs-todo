pipeline {
    agent any
    stages {
        stage('Git Clone') {
            steps {
                git credentialsId: 'GIT_HUB_CREDENTIALS', url: 'https://github.com/claudiabringaseverett/nodejs-todo.git'
            }
        }
        stage('Sonarqube Scan') {
            steps {
                echo 'Scanning ...'
            }
        }
        // stage('Build App') {
        //     steps {
        //         sh 'npm -v'
        //         sh 'node -v'
        //         sh 'npm install'
        //     }
        // }
        // stage('Docker Build') {
        //     steps {
        //         sh 'docker version'
        //         sh 'docker build -t nodejs-app .'
        //         sh 'docker image list'
        //         sh 'docker tag nodejs-app claubr20/nodejs-app:nodejs-app'
        //     }
        // }

        // withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'PASSWORD')]) {
        //     sh 'docker login -u claubr20 -p $PASSWORD'
        // }

        // stage('Push Image to Docker Hub') {
        //     steps {
        //         sh 'docker push claubr20/nodejs-app:nodejs-app'
        //     }
        // }
        // stage('Deployment to Kubernetes') {
        //     steps {
        //         sh 'kubectl apply -f deployment.yaml'
        //     }
        // }
    }
}
