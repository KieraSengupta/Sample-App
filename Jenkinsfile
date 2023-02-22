pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/master']], 
                          extensions: [[$class: 'CloneOption', 
                                        depth: 1, 
                                        noTags: true, 
                                        reference: '', 
                                        shallow: true]], 
                          userRemoteConfigs: [[url: 'https://github.com/Shaxxz13/image-processing.git']]])
            }
        }
        
          tools {nodejs "nodejs"}

          stages {
            stage('Install NodeJs') {
              steps {
                sh 'npm config ls'
              }
            }
          }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}
