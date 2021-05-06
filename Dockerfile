FROM marketsquare/robotframework-browser

WORKDIR /run

COPY . .

ENTRYPOINT ["robot"]
