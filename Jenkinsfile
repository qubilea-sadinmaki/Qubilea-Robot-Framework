node {
   def commit_id
   stage('Preparation') {
     checkout scm
     sh "git rev-parse --short HEAD > .git/commit-id"
     commit_id = readFile('.git/commit-id').trim()
   }
   stage('test') { 
    def container = docker.image('marketsquare/robotframework-browser:v5.1.0').inside('--rm -v $env.WORKSPACE:/run -w /run/tests bash -c "robot -v headless:True --outputdir /run/report/fi/chrome/ /run/tests"') {
        stage('Check') {
            sh 'ls'
        }
    }                                  
   }                                                                            
} 

// docker run --rm \
//   -v $(pwd):/run \
//     marketsquare/robotframework-browser:v5.1.0 \
//       bash -c "robot -v headless:True --outputdir /run/report/fi/chrome/ /run/tests"
