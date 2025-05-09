node {

      echo "git branch name : ${env.BRANCH_NAME}"
      echo "build number is : ${env.BUILD_NUMBER}"
      echo "node name is : ${env.NODE_NAME}"

      def mavenHome=tool name: "maven-3.9.9"

    try {
    notifyBuild('Started')
  
  stage('Git checkout'){
  git credentialsId: '825abf46-ffd0-4a48-adb0-962762034b0b', url: 'https://github.com/PraveenKumarDova/maven-web-application.git'
  
  }

  stage('compile'){
  sh "${mavenHome}/bin/mvn clean compile"
  }

  stage('Build'){
  sh "${mavenHome}/bin/mvn clean package"
  }

  // stage('SQ'){
  // sh "${mavenHome}/bin/mvn clean sonar:sonar package"
  // }

  // stage('Deploy to Nexus'){
  // sh "${mavenHome}/bin/mvn clean sonar:sonar deploy"
  // }

  stage('Deploy to TomcatApplnServer'){
    echo "Deploying war file into Tomcat application server using curl command..."

    sh """
       curl -u praveen:praveen123 \
       --upload-file /var/lib/jenkins/workspace/amazon-declarative-pl/target/maven-web-application.war \
       "http://13.40.178.34:8085/manager/text/deploy?path=/maven-web-application&update=true"
    """   

  }
        
  } catch (e) {
    // If there was an exception thrown, the build failed
    currentBuild.result = "FAILED"
    throw e
  } finally {
    // Success or failure, always send notifications
    notifyBuild(currentBuild.result)
  }
}

def notifyBuild(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESSFUL'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESSFUL') {
    color = 'GREEN'
    colorCode = '#00FF00'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary)
}

