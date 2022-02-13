pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                echo 'Validating..'
                sh 'mvn validate'
            }
        }
        stage('UnitTesting') {
            steps {
                echo 'unit testing...'
                sh 'mvn test'
                
            }
        }
        stage('Sonar Analysis') {
            steps {
                echo 'Sonar analysis....'
            }
        }
        stage('Release') {
            steps {
                echo 'Releasing..'
                
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
