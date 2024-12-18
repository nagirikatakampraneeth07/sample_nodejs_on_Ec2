FROM amazonlinux
MAINTAINER veera "nagirikatakampraneethmca@gmail.com"
COPY . /app
WORKDIR app
RUN sudo yum install curl -y \
    source ~/.bash_profile \
    nvm install node \
    node -v \
    npm -v \
    npm install \
EXPOSE 80
CMD ["npm", "start"]
