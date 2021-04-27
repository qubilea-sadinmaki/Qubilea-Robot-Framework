# Qubilea-Robot-Framework
 Testautomation for Qubilea website

 # Init
 % python3 -m venv venv
 % source venv/bin/activate
 %(venv) pip install -r requirements.txt
 %(venv) rfbrowser init

 # Use
 - All tests
  %(venv) source run.sh 

 - One testsuite (examples) 
  %(venv) robot main-nav.robot
 or
  %(venv) robot --variable browser:firefox main-nav.robot
 or
  %(venv) robot --variable lang:en/ main-nav.robot
