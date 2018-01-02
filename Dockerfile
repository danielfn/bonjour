FROM bucharestgold/centos7-s2i-nodejs:latest

COPY package.json /opt/app-root/src
COPY . /opt/app-root/src

# Install the app
RUN npm -s install

# Run it
CMD ["/bin/bash", "-c", "npm run -d $NPM_RUN" ]
