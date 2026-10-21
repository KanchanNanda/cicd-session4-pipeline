
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

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'build/index.html',
                                 fingerprint: true
            }
        }
    }
}



