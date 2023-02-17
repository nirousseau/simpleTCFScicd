// https://github.com/CookieFactoryInSpring/demo-module-maven/blob/demo-jenkins/Jenkinsfile
// https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html

pipeline {
    agent any
    environment {
       REPO_USER = credentials('artifactory-user-id')
       REPO_USER_PWD = credentials('artifactory-apikey-id')
    }
    stages {
       stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                    #cp assets/settings.xml ${M2_HOME}/
                    ls -lah ${M2_HOME}
                    java -version
                '''
            }
        }
        stage('Verify') {
            steps {
                sh "cd backend && mvn clean verify"
            }
        }
        stage('Build all') {
            steps {
                sh "cd backend && mvn -Drepo.id=snapshots -Drepo.login=$REPO_USER -Drepo.pwd=$REPO_USER_PWD clean deploy"
            }
        }
    }
}
