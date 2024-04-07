
pipeline {
   agent any
   stages {
	stage ('Permissions')
	{
		steps {
		 sh 'chmod +x build.sh'
		 sh 'chmod +x deploy.sh'
		}
	}
	stage ('Docker Build') {
		steps {
		 sh './build.sh'
		 sh './deploy.sh'
		}
	}
	  }
}
