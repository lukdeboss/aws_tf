
// to komewntarz
pipeline {
    agent { label 'glowne' }

    stages {
        stage('materials') {
            steps {
                sh '/bin/ciag-tf-klucze'
                echo 'sciaganie repos'
                sh 'mv aws-tf-my4 00-aws-tf-my4.tf'
                sh 'ls -al'
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


