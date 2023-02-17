// https://github.com/CookieFactoryInSpring/demo-module-maven/blob/demo-jenkins/Jenkinsfile

pipeline {
    agent any
    environment {
       REPO_USER = credentials('artifactory-user-id')
       REPO_USER_PWD = credentials('artifactory-apikey-id')
    }
    stages {
        stage('Build all') {
            steps {
                sh "cd backend && mvn -Drepo.id=snapshots -Drepo.login=$REPO_USER -Drepo.pwd=$REPO_USER_PWD clean deploy"
            }
        }
    }
}
