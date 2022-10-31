import org.jenkinsci.plugins.pipeline.modeldefinition.Utils
	pipeline {
	    agent none
	        environment {
		        CLUSTER_STAGING = 'kubernetes-sirclo-data-staging'
		        ENTRYPOINT      = '/home/jenkins/entrypoint/entrypoint.sh'
		    }
		    stages {
		        stage("release to staging") {
		            agent {
		                kubernetes {
		                  cloud "${CLUSTER_STAGING}"
		                  inheritFrom 'jenkins-agent'
		                }
		            }
		            steps {
		                container('deployer-buildah') {
		                    sh "${ENTRYPOINT}"
				    sh 'whoami && buildah bud -t fajar-test:v1 . '
		                }
		            }
		        }
		    }
		}
