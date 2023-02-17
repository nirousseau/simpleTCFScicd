pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 30, unit: 'SECONDS')
    }
    stages {
        stage('Example') {
            steps {
                echo 'Hello World Nikita'
            }
        }
    }
}

