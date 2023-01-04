pipeline
{
    agent 
    {
        label 'ubuntu'
    }
    parameters
    {
        choice(name: 'Branch_to_build', 
               choices: ['main', 'JS'], 
               description: 'Choose the branch to build')
    }
    stages
    {
        stage('clone')
        {
            steps
            {
                git url: 'https://github.com/tarunkumarpendem/js-e2e-express-server.git',
                    branch: "${params.Branch_to_build}"
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






