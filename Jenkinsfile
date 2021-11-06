pipeline {
	def commit_id

	stages	{

		stage('Preparation'){
			steps{
			checkout scm
			sh "git rev-parse --short HEAD > .git/commit-id"
			commit_id = readFile('.git/commit-id').trim()
			}
		}
		stage('Test'){
			steps {
			nodejs(nodeJSInstallationName: 'NodeJs'){
				sh 'npm install'
				}
			}
		}	
		stage('Docker Build/Push'){
			steps{
			docker.withRegistry('https://index.docker.io/v1/', 'dockerhub'){
				def app = docker.build('ximran96/node-socket:${commit_id}', '.').push()
				}
			}
		}
	}
}