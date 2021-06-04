pipeline {
    agent any

    stages {
        stage('clean environment') {
            steps {
                sh('ls')
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
