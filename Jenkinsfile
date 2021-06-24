node {
   def commit_id
   stage('Preparation') {
     checkout scm
     sh "git rev-parse --short HEAD > .git/commit-id"
     commit_id = readFile('.git/commit-id').trim()
   }
   stage('test Chrome - FI') { 
    //run test in container
    sh 'docker run --rm \
    -v $(pwd):/run \
    marketsquare/robotframework-browser:v5.1.0 \
    bash -c "robot -v headless:True --outputdir /run/report/fi/chrome/ /run/tests"'                                 
   } 
   stage('test Firefox - FI') { 
    //run test in container
    sh 'docker run --rm \
    -v $(pwd):/run \
    marketsquare/robotframework-browser:v5.1.0 \
    bash -c "robot -v headless:True -d /run/report/fi/firefox/ -v browser:firefox /run/tests/"'                                 
   } 
   stage('test Chrome - EN') { 
    //run test in container
    sh 'docker run --rm \
    -v $(pwd):/run \
    marketsquare/robotframework-browser:v5.1.0 \
    bash -c "robot -v headless:True -d /run/report/en/chrome/ -v lang:en/ -i EN -e phonenumber /run/tests/"'                                 
   } 
   stage('test Firefox - EN') { 
    //run test in container
    sh 'docker run --rm \
    -v $(pwd):/run \
    marketsquare/robotframework-browser:v5.1.0 \
    bash -c "robot -v headless:True -d /run/report/en/firefox/ -v lang:en/ -v browser:firefox -i EN -e phonenumber /run/tests/"'                                 
   }                                                                           
}
