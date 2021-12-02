pipeline
{
    agent any
        stages
        {
            stage('test')
            {
                steps
                {
                    sh "py.test --junitxml results.xml test.py"
                }
            }
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
                    sh "docker run -d -p 3000:3000 testflask"
                }
                
            }
        }
}