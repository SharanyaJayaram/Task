pipeline {
//      environment {
//     imagename = "sharanyajayaram/task"
// //     dockerImage = ''
//      }
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
        stage('Code checkout') {
             steps {
                  checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '23fdc10b-169b-47f7-b512-1e74bb463b0c', url: 'https://github.com/SharanyaJayaram/Task.git']])
             }
        }
         stage('Building image') {
              steps{
                   script {
                       retry(2){
                        sh 'docker build -t imageapache:${BUILD_NUMBER} '
                        sh 'docker images'
                       }
                   }
                  
              }
                    
         }
    }
}.timeout(time: 1, unit: 'HOURS')
