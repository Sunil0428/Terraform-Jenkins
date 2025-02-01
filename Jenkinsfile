pipeline{
    agent any
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
            steps{
                withCredentials([aws(credentialsId: "aws-creds")]){
                sh '''
                    cd EC2
                    terraform init
                '''
                }
            }
        }
    }
}