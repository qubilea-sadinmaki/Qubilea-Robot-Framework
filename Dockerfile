FROM marketsquare/robotframework-browser:v2.5.0
WORKDIR /run
COPY . .
USER jenkins
ENTRYPOINT [ "robot" ]