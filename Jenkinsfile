
// to komewntarz
pipeline {
    agent { label 'glowne' }
    parameters {
        choice(
            choices: ['greeting' , 'silence'],
            description: '',
            name: 'REQUESTED_ACTION')
    }
    environment {
        zmienna2 = 'jakas zmienna'
    }
    stages {
        stage('materials') {
            steps {
                sh '/bin/ciag-tf-klucze'
                echo 'sciaganie repos'
                sh 'mv aws-tf-my4 00-aws-tf-my4.tf'
                sh 'ls -al'
            }
        }
        stage('test if') {
            when {
               expression { params.REQUESTED_ACTION == 'greeting' }
            }
            steps {
               sh 'echo no to jestem'
            }
        }
        stage('terraform plan') {
            steps {
                sh "terraform init"
                sh "terraform plan"
            }
        }
        stage('Deploy approval') {
            steps {
               input "Deploy to prod?"
            }
        }
        stage('terraform apply') {
            steps {
                sh "terraform apply --auto-approve"
                // to pokazuje outputs ktore i tak sa automatycznie pokazywane
                // sh "terraform output"
            }
        }
    }
}


