node {
   def commit_id
   stage('Preparation') {
     checkout scm
     sh "git rev-parse --short HEAD > .git/commit-id"
     commit_id = readFile('.git/commit-id').trim()
   }
   stage('test') { 
     def myEnv = docker.build 'my-environment:snapshot'
     myEnv.inside("--rm") { // using linking, mysql will be available at host: mysql, port: 3306
          sh '--version'                     
     }                                   
   }                                                                            
} 
