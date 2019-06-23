
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
        stage('terraform plan') {
            steps {
                sh "terraform init"
                sh "terraform plan"
            }
        }
        stage('terraform apply') {
            steps {
                sh "terraform apply"
            }
        }
    }
}


