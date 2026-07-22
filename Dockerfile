FROM ubuntu

RUN apt-get update 
RUN apt-get install nodejs
RUN apt-get upgrade -y 

COPY package.json package.json 
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm intall

ENTRYPOINT [ "node","index.js"]