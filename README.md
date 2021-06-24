# Qubilea-Robot-Framework
 Testautomation demo testing Qubilea website. Using Browser library

 # Init
    python3 -m venv venv
    source venv/bin/activate
    (venv) pip install -r requirements.txt
    (venv) rfbrowser init

 # Use
 - All tests
  (venv) source run.sh 

 - One testsuite (examples) 
  (venv) robot tests/main-nav.robot
 or
  (venv) robot --variable browser:firefox tests/main-nav.robot
 or
  (venv) robot --variable lang:en/ tests/main-nav.robot

# Docker (exapmples)
- Runs one testsuite on chrome
  docker run --rm \
  -v $(pwd):/run \
  rf_qubilea \
  -v headless:True -d report/fi/chrome/ tests/main-navigation.robot

- Runs multiple testsuites parallel
  docker-compose up

docker run --rm \
  -v $(pwd):/run \
    marketsquare/robotframework-browser:v5.1.0 \
      bash -c "robot -v headless:True --outputdir /run/report/fi/chrome/ /run/tests"

