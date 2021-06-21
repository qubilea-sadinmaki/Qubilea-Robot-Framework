node {
   stage('test with Robot Framework & Browser library') {
     def myTestContainer = docker.image('marketsquare/robotframework-browser:v2.5.0')
     myTestContainer.pull()
     myTestContainer.inside {
      //  sh 'source run.sh'
      sh 'sudo robot -d report/fi/chrome/ main-navigation.robot contact.robot language.robot stories.robot'
     }
   }                                                                          
} 
