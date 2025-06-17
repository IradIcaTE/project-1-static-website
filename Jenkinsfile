pipeline {
    agent {label 'First'}

    stages {
        stage('Clone Repo') {
            steps {
                git url: 'https://github.com/IradIcaTE/project-1-static-website.git', branch: 'main'
            }
        }

        stage('Run Shell Script') {
            steps {
                sh 'bash scripts/deploy.sh'
            }
        }
    }
}