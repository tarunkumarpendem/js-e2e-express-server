FROM node:16-slim as tarun
LABEL app="js-e2e"
LABEL author="tarun"
LABEL tech="nodejs"
ARG branch=JS
RUN apt update && \
    apt install git -y && \
    git clone https://github.com/tarunkumarpendem/js-e2e-express-server.git 
WORKDIR /js-e2e-express-server   
RUN git checkout ${branch} && \
    npm install && \
    npm run build && \
    npm run test 
EXPOSE 3000
CMD [ "npm", "start", "--host", "0.0.0.0" ]



FROM ubuntu:20.04 as os
LABEL app="js-e2e"
LABEL author="tarun"
LABEL tech="nodejs"
ARG branch=JS
RUN apt update && \
     apt install nodejs git curl -y && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    git clone https://github.com/tarunkumarpendem/js-e2e-express-server.git && \
    cd js-e2e-express-server && \
    git checkout ${branch} && \
    npm install && \
    npm run build && \
    npm run test  
EXPOSE 3000
CMD [ "npm", "start", "--host", "0.0.0.0" ]