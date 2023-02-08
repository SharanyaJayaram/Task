pipeline {
    agent any
    options { timestamps () }
    stages {
        stage('Display Docker version') {
            steps {
                sh 'docker --version'
            }
        }
        stage('Display Git version') {
            steps {
                sh 'git --version'
            }
        }
        
    }
}
