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
                git url: 'https://github.com/tarunkumarpendem/js-e2e-express-server.git',
                    branch: 'JS'
            }
        }
        stage('install')
        {
            steps
            {
                sh script """npm install,
                             npm run build"""
            }
        }
    }
}