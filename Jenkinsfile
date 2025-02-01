pipeline{
    agent any
    parameters {
        booleanParam(name: 'APPLY', defaultValue: true, description: 'Should terraform apply?')
        booleanParam(name: 'DESTROY', defaultValue: true, description: 'Should terraform destroy?')
        choice(name: 'BRANCH', choices: ['main', 'develop', 'feature'], description: 'Branch to build')
    }
    environment {
        GIT_REPO_URL = 'https://github.com/Sunil0428/Terraform-Jenkins.git'
    }

    stages{
        stage('Checking out code'){
            steps{
                echo 'Checking out code..'
                git branch: 'main', url: "${GIT_REPO_URL}"
            }
        }
        stage("terraform init"){
            if (params.APPLY == 'true')
            steps{
                withCredentials([aws(credentialsId: "aws-creds")]){
                sh '''
                    cd EC2
                    terraform init
                '''
                }
            }
        }
        stage("terraform plan"){
            if (params.APPLY == 'true')
            steps{
                withCredentials([aws(credentialsId: "aws-creds")]){
                sh '''
                    cd EC2
                    terraform plan
                '''
                }
            }
        }
        stage("terraform apply"){
            if (params.APPLY == 'true')
            steps{
                withCredentials([aws(credentialsId: "aws-creds")]){
                sh '''
                    cd EC2
                    terraform apply -auto-approve
                '''
                }
            }
        }
        stage("terraform destory"){
            if (params.DESTROY == 'true')
            steps{
                withCredentials([aws(credentialsId: "aws-creds")]){
                sh '''
                    cd EC2
                    terraform destroy -auto-approve
                '''
                }
            }
        }
    }
}