FROM node:14
WORKDIR /usr/src/ec2
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
EXPOSE 8000
RUN chown -R node /usr/src/ec2
USER node
CMD ["npm", "start"]
