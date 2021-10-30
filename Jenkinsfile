pipeline
{
    agent any
        stages
        {
            stage('Docker Build')
            {
               steps
               {
                   sh "sudo docker build -t testflask ."
               }
                
            }
            stage('Docker Run')
            {
                steps
                {
                    sh "sudo docker run -p 3000:3000 testflask"
                }
                
            }
        }
}