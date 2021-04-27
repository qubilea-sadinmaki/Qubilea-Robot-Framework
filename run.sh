#!/usr/bin/env bash

robot main-nav.robot
robot --variable browser:firefox main-nav.robot 
robot --variable lang:en/ main-nav.robot
robot --variable browser:firefox --variable lang:en/ main-nav.robot