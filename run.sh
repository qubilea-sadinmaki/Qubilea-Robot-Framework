#!/usr/bin/env bash

robot -d output/fi/chrome/ main-navigation.robot contact.robot language.robot stories.robot
robot -d output/fi/firefox/ -v browser:firefox main-navigation.robot contact.robot language.robot stories.robot
robot -d output/en/chrome/ -v lang:en/ -e phonenumber main-navigation.robot contact.robot
robot -d output/en/firefox/ -v lang:en/ -v browser:firefox -e phonenumber main-navigation.robot contact.robot