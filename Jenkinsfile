

pipeline {
  agent any

  tools {
  maven "maven-3.9.9"
  }

  stages {

   stage('git checkout') {
     
     steps {
     git credentialsId: '825abf46-ffd0-4a48-adb0-962762034b0b', url: 'https://github.com/PraveenKumarDova/maven-web-application.git'
       
     }//steps end
   }//checkout stage end

    stage('compile'){
     steps {

     sh "mvn clean compile"

     }
    }//compile stage end

    stage('build'){
     steps {

     sh "mvn clean package"

     }
    }//build stage end

    stage('SQ'){
      steps{
      sh "mvn clean sonar:sonar"
      }
    }

    stage('nexus'){
      steps{
      sh "mvn clean deploy"
      }
    }

    stage('Deploy to Tomcat'){
     steps{
     echo "Deploying WAR file using curl..."

        sh """
            curl -u praveen:praveen123 \
            --upload-file /var/lib/jenkins/workspace/amazon-declarative-pl/target/maven-web-application.war \
            "http://13.40.178.34:8085/manager/text/deploy?path=/maven-web-application&update=true"
        """
     }
    }//tomcat stage end
   

  }//stages end

post {
  success {
    notifyBuild(currentBuild.result)
  }
  failure {
    notifyBuild(currentBuild.result)
  }
}


}//pipeline-end

def notifyBuild(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESS'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESS') {
    color = 'GREEN'
    colorCode = '#00FF00'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary, channel: '#amazon-dev')
}
