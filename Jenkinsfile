
// to komewntarz
pipeline {
    agent { label 'glowne' }
    parameters {
        choice(
            choices: ['create' , 'destroy'],
            description: 'tworzenie lub kasowanie infrastruktury',
            name: 'CACTION')
    }
    environment {
        // zmienne glowne dla wszystkich stages
        zmienna2 = 'jakas zmienna'
    }
    stages {
        stage('trst') {
            when {
                // case insensitive regular expression for truthy values
                expression { return token ==~ /(?i)(Y|YES|T|TRUE|ON|RUN)/ }
            }
            steps {
                sh "echo cooooooooo"
            }
        }
        stage('materials') {
            // zmienne tylko dla danego stage
            environment {
               zmienna3 = 'jasdfasdf'
            } 
            steps {
                sh '/bin/ciag-tf-klucze'
                echo 'sciaganie repos'
                sh 'mv aws-tf-my4 00-aws-tf-my4.tf'
                sh 'ls -al'
            }
        }
        stage('terraform plan destroy') {
            when {
                expression { params.CACTION == 'destroy' }
            }
            steps {
                sh "terraform plan --destroy"
            }
        }
        stage('terraform plan') {
            when {
               expression { params.CACTION == 'create' }
            }
            steps {
                // move it to separate stage with when statement
                // sh "terraform init"
                sh "terraform plan"
            }
        }
        stage('Deploy approval') {
            steps {
               input "Deploy to prod?"
            }
        }

        stage('terraform destroy') {
            when {
               expression { params.CACTION == 'destroy' }
            }
            steps {
                sh "terraform destroy --auto-approve"
                // to pokazuje outputs ktore i tak sa automatycznie pokazywane
                // sh "terraform output"
            }
        }
        stage('terraform apply') {
            when {
               expression { params.CACTION == 'create' }
            }
            steps {
                sh "terraform apply --auto-approve"
                // to pokazuje outputs ktore i tak sa automatycznie pokazywane
                // sh "terraform output"
            }
        }
    }
}


