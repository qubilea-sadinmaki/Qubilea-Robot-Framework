#!/usr/bin/env bash

robot main-navigation.robot
robot --variable browser:firefox main-navigation.robot 
robot --variable lang:en/ main-navigation.robot
robot --variable browser:firefox --variable lang:en/ main-navigation.robot
robot contact.robot
robot --variable browser:firefox contact.robot 
robot --variable lang:en/ contact.robot
robot --variable browser:firefox --variable lang:en/ contact.robot
robot language.robot
robot --variable browser:firefox language.robot