pipeline
{
    agent any
        stages
        {
            stage('Docker Build')
            {
                sh "sudo docker build -t testflask ."
            }
            stage('Docker Run')
            {
                sh "sudo docker run -p 3000:3000 testflask"
            }
        }
}