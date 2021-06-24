#!/usr/bin/env bash
HEADLESS=${1:-False} 
PREPATH=${2:-""} 

robot -d ${PREPATH}report/fi/chrome/ -v headless:${HEADLESS} ${PREPATH}tests/
robot -d ${PREPATH}report/fi/firefox/ -v browser:firefox ${PREPATH}tests/
robot -d ${PREPATH}report/en/chrome/ -v lang:en/ -i EN -e phonenumber ${PREPATH}tests/
robot -d ${PREPATH}report/en/firefox/ -v lang:en/ -v browser:firefox -i EN -e phonenumber ${PREPATH}tests/