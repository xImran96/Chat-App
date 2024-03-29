job('Chat-app job DSL Docker'){

	description()

	scm {
		 git("https://github.com/xImran96/Chat-App.git", 'master')
	}

	triggers {
		scm('H/S * * * *')
	}

	wrappers {
		nodejs('NodeJs')
	}

	steps {
		shell('npm install')
	}

	steps {
		dockerBuildAndPublish {
			repositoryName('ximran96/node-socket')
            tag('${BUILD_NUMBER}-${GIT_REVISION,length=7}')
            registryCredentials('docker-hub')
            forcePull(false)
            createFingerprints(false)
            skipDecorate()
		}
	}


}