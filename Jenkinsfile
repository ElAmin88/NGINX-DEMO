pipeline {
    agent any

    stages {
        stage('give permissions') {
            steps {
                sh ('chmod 777 clean.sh')
                sh ('chmod 777 image_update.sh')
                sh ('chmod 777 deploy.sh')
            }
        }
        stage('clean environment') {
            steps {
                sh ('./clean.sh')
            }
        }
        stage('update image') {
            steps {
                sh ('./image_update.sh')
            }
        }
        stage('deployment') {
            steps {
                sh ('./deploy.sh')
            }
            
        }
    }
}
