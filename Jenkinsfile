node {
	def commit_id
	stage('Preparation'){
		checkout scm
		sh "git rev-parse --short HEAD > .git/commit-id"
		commit_id = readFile('.git/commit-id').trim()
	}
	stage('Test'){
		nodejs(nodeJSInstallationName: 'NodeJs'){
			sh 'npm install'
		}
	}	
	stage('Docker Build/Push'){
		docker.withRegistry('https://hub.docker.com/', 'docker-hub'){
			def app = docker.build('ximran96/node-socket:${commit_id}', '.').push()
		}

	}
}