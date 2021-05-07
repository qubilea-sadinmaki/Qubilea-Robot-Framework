#!/usr/bin/env bash

robot -d report/fi/chrome/ main-navigation.robot contact.robot language.robot stories.robot
robot -d report/fi/firefox/ -v browser:firefox main-navigation.robot contact.robot language.robot stories.robot
robot -d report/en/chrome/ -v lang:en/ -e phonenumber main-navigation.robot contact.robot
robot -d report/en/firefox/ -v lang:en/ -v browser:firefox -e phonenumber main-navigation.robot contact.robot