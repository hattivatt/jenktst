pipeline {

    agent any
    stages {
        stage('test1') {
            steps {
                sh './start.sh'
		sh 'pwd'
            }
        }
        stage('test2') {
	    when {
	        changeset "migrations/*.sh"
	    }
            steps {
                sh 'cd migrations; ./tests.sh'
            }
        }
        stage('test3') {
            steps {
                sh 'echo "Let\'s wrap it up"'
            }
        }
    }
}
