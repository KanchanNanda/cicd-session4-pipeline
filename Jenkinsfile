
pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                sh 'bash validate.sh'
            }
        }

        stage('Build') {
            steps {
                sh 'mkdir -p build && cp app/index.html build/index.html'
            }
        }

        stage('Test') {
            steps {
                sh 'bash test.sh' 
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'build/index.html',
                                 fingerprint: true
            }
        }
        stage('Deploy') {
            steps {
                sh 'bash deploy.sh'
            }
        }

    }

}



