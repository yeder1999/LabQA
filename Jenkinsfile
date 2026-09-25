pipeline {

    agent any

    stages {

        stage('Start Selenium') {
            steps {
                sh 'docker compose up -d'
                sh 'docker compose ps'
            }
        }

        stage('Tests') {

            agent {
    docker {
        image 'ppodgorsek/robot-framework:latest'
        args "--entrypoint='' --shm-size=2g --network=pipeline_projet_robotframework_default"
        reuseNode true
    }
}

            steps {
                    sh '''
                                python -m venv .venv
                                .venv/bin/pip install --upgrade pip
                                .venv/bin/pip install robotframework robotframework-seleniumlibrary robotframework-datadriver allure-robotframework

                                .venv/bin/robot \
                                    --listener allure_robotframework:allure-results \
                                    --variable REMOTE_URL:http://selenium-hub:4444/wd/hub \
                                    --variable BROWSER:chrome \
                                    ./tests/
                            '''
            }
        }
    }

    post {
        always {
            allure([
                results: [[path: 'target/allure-results']]
            ])

            sh 'docker compose down || true'
        }
    }
}