job('Chat-app job DSL'){

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

}