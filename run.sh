#!/usr/bin/env bash

robot -d report/fi/chrome/ tests/
robot -d report/fi/firefox/ -v browser:firefox tests/
robot -d report/en/chrome/ -v lang:en/ -i EN -e phonenumber tests/
robot -d report/en/firefox/ -v lang:en/ -v browser:firefox -i EN -e phonenumber tests/