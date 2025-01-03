pipeline{
    
    agent any
    
    stages{
        stage(Extarcting){
            steps{
                git url: "https://github.com/tushardubey/TaskSphere.git", branch: "main"
            }
        }
        stage (build){
            steps {
                echo "building code"
                bat "docker build -t notes-app:latest ."
            }
        }
        stage (test){
            steps {
                echo "this is testing phase"
            }
            
        }    
        stage (deploy){
            steps {
                echo "deploying code"
                bat "docker compose up -d"
            }
        }
    }
}