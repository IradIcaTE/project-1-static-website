pipeline {
    agent {label 'First'}

    stages {
        stage('Clone Repo') {
            steps {
                git url: '', branch: 'main'
            }
        }

        stage('Run Shell Script') {
            steps {
                sh 'bash scripts/deploy.sh'
            }
        }
    }
}