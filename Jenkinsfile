pipeline {
    agent any
    environment {
        WORK_DIR = ''
    }


    stages {
        stage ('打包') {
            agent {
                docker {
                    image 'node:10.23.1-alpine3.9'
                    args '-p 3000:3000 -u root --security-opt seccomp=unconfined'
                }
            }
            steps {
                sh 'pwd'
                sh "npm config set registry ${NPM_REPOS_ADDR}"
                sh 'npm i'
                sh 'npm run build'
                sh 'chmod -R 777 .'
                sh 'pwd'
                sh 'ls'
                script{
                    WORK_DIR = sh(returnStdout: true, script: 'pwd')
                    echo "$WORK_DIR"
                }
            }
        }

        stage ('镜像') {  
            steps {
                echo "${WORK_DIR}"
                sh "ls ${WORK_DIR}"
                
            }
        }

        
    }
} 
