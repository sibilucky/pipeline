pipeline {
agent any

environment {
    username = 'abc'
    password = 'asdf'
}
stages {
    stage ('Login') {
        steps {
            echo 'Login.'
            build job: 'LoginToPlatform'
        }
    }
    stage ('Deployment') {
        steps {
            echo 'Deployment.'
            build job: 'DeployOnPlatform'
        }
    }
    stage ('Logout') {
        steps {
            echo 'Logout.'
            build job: 'LogoutFromPlatform'
        }
    }
}
}
