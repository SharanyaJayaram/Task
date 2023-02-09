pipeline {
//      environment {
//     imagename = "sharanyajayaram/task"
// //     dockerImage = ''
//      }
    agent any
    options { 
        timestamps ()
        timeout(time: 2, unit: 'MINUTES')   
        skipDefaultCheckout true
        buildDiscarder(logRotator(daysToKeepStr: '10'))
    }
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
                        sh '''docker image prune -y
                        docker build -t imageapache:${BUILD_NUMBER} .
                        docker images'
                        docker image inspect httpd:2.4
                        docker run -d -t --name container1 httpd:2.4
                        docker stop container -a'''
                          
                       }
                   }
                  
              }
                    
         }
    }
}
