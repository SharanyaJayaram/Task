pipeline {
     environment {
    imagename = "apacheimage"
  }
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
        stage('Docker build') {
      steps{
        script {
          dockerImage = docker.build(imagename:${BUILD_NUMBER}) . 
//           image = docker.build(<image_name_1>:<tag_1>)
        }
      }
    }
        
    }
}
