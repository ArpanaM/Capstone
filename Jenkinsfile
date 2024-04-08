
pipeline {
   agent any
   stages {
	stage ('Permissions')
	{
		steps {
		 sh 'chmod +x build.sh'
		 sh 'chmod +x deploy2.sh'
		}
	}
	stage ('Docker Build') {
		steps {
		 sh './build.sh'
		 sh './deploy2.sh'
		}
	}
	  }
}
