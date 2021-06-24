FROM marketsquare/robotframework-browser:v5.1.0
WORKDIR /run
COPY . .
ENTRYPOINT [ "robot" ]