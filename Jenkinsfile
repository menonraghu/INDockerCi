pipeline {
    agent { label 'master'}

    parameters{
        string(name:'AWS_ACCESS_KEY', defaultValue: '', description: 'AWS_ACCESS_KEY')
        string(name:'AWS_SECRET_ACCESS_KEY', defaultValue: '', description: 'AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('Source Step'){
            steps{
                  sh(
                      '''
                      sh 'scripts/source-step.sh'
        
                      '''  
                  )
            }
        }
        stage('build step'){
            steps{
                  sh(
                      '''
                      sh 'scripts/build-step.sh'
                      '''  
                  )
            }
        }
        stage('deploy step'){
            steps{
                  sh(
                      '''
                      sh 'scripts/deploy-step.sh'
                      '''  
                  )
            }
        }
    }
}