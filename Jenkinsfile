pipeline {

    agent any
    stages {
        stage('test1') {
            steps {
                sh './start.sh'
            }
        }
        stage('test2') {
            steps {
                sh 'cd migrations; ./start.sh'
            }
        }
    }
}
