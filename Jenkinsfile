
// to komewntarz
pipeline {
    agent { label 'glowne' }

    stages {
        stage('materials') {
            steps {
                echo 'sciaganie repos'
                sh 'ls -al'
                sh "scp -p 57185 $Serwer1:/l/ssh_unifikacja/aws-tf-my4 ."
                sh 'whoami'
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


