
// to komewntarz
pipeline {
    agent { label 'glowne' }

    stages {
        stage('materials') {
            steps {
                echo 'sciaganie repos'
                sh 'ls -al'
                sh 'whoami'
                sh 'ls -al /'
                sh '/bin/ciag-tf-klucze'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                echo "zakladam ze to jest tutaj"
                sh 'ls -al '
            }
        }
    }
}


