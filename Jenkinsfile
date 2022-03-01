pipeline {
	agent any
	stages {
		stage('Building Application') {
			steps {
				sh "npm install"
				sh "echo Build Created Successfully" 
			}
		}
		stage('Building Docker Image') {
			steps {
				sh "docker build -t ximran96/node-socket:latest ." 
				sh "echo Docker image created Successfully" 
			}
		}
	}
}