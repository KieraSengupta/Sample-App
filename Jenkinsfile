pipeline {
    agent any
    
    tools {nodejs "node"}
    
    stages {

        stage('Git') {
      steps {
        git 'https://github.com/Shaxxz13/image-processing.git'
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
                sh 'npm run deploy'
            }
        }
    }
}
