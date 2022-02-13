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
                sh 'mvn sonar:sonar \  -Dsonar.host.url=http://3.137.139.235:9000 \  -Dsonar.login=752e5a255b2c3000bce90b13ced10785338a0b50'
            }
        }
        stage('Release') {
            steps {
                echo 'Releasing..'
                sh 'mvn deploy'
                
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'sudo wget --user admin --password admin123 http://3.137.139.235:8081/nexus/service/local/repositories/releases/content/com/web/cal/WebAppCal/1.3.3/WebAppCal-1.3.3.war -P /home/centos/apache-tomcat-7.0.94/webapps/'
            }
        }
    }
}
