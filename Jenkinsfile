pipeline
{
    agent 
    {
        label 'ubuntu'
    }
    stages
    {
        stage('clone')
        {
            steps
            {
                git url: 'https://github.com/tarunkumarpendem/js-e2e-express-server.gitt',
                    branch: 'JS'
            }
        }
        stage('install, build and test')
        {
            steps
            {
                script
                {
                    sh """npm install
                          npm run build
                          npm run test"""
                }
            }
        }
    }
}