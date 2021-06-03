pipeline {
    agent any

    stages {
        stage('clean environment') {
            steps {
                bat 'powershell.exe -ExecutionPolicy Bypass  "C:\\Users\\AbdelrahmanElaminAde\\Desktop\\DevOps\\NGINX-DEMO\\clean.bat"'
            }
        }
        stage('update image') {
            steps {
                bat 'powershell.exe -ExecutionPolicy Bypass  "C:\\Users\\AbdelrahmanElaminAde\\Desktop\\DevOps\\NGINX-DEMO\\imageUpdate.bat"'
            }
        }
        stage('deployment') {
            steps {
                bat 'powershell.exe -ExecutionPolicy Bypass  "C:\\Users\\AbdelrahmanElaminAde\\Desktop\\DevOps\\NGINX-DEMO\\deploy.bat"'
            }
            
        }
    }
}
