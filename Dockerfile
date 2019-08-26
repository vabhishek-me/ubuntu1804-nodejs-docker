# image
FROM ubuntu:18.04

# system configuration
RUN apt-get update && apt-get install -y build-essential && apt-get install curl -y

# install node
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v

# node
CMD [ "node" ]
