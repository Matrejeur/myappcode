pipeline{
    agent any
    stages{
        stage('Setup Python Virtual ENV'){

            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''


        }
        stage('Setup Gunicorn'){

            steps{
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''

            }

        }



        stage('setup nginx'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''

            }

        }


    }
}