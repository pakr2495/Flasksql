pipeline
{
    agent any
        stages
        {
            stage('Docker Build')
            {
               steps
               {
                   sh "docker build -t testflask ."
               }
                
            }
            stage('Docker Run')
            {
                steps
                {
                    sh "docker run -p 3000:3000 testflask"
                }
                
            }
        }
}