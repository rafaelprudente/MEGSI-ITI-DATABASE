pipeline {
    agent any
        tools {
            maven 'MVN'
        }
    stages {
        stage('Build') {
            steps {
                sh 'mvn flyway:migrate'
            }
        }
    }
}