FROM marketsquare/robotframework-browser
WORKDIR /run
COPY . .
USER jenkins
ENTRYPOINT [ "robot" ]