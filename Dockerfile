# define the image you want to pull for docker
FROM node:lts

# add app source code to the image
WORKDIR /app

# copy our package.json into docker
COPY package.json ./

# install node modules
RUN npm install

# copy all source code from the project into docker
# (ignores node_modules as specified in .dockerignore)
COPY . .

# set env process variable
ENV PORT=8080

# expose the port that express runs on
EXPOSE 8080

# tells the container how to run the actual application
# every docker file can only have one CMD instruction
# exec form => doesn't start a shell session (best practice)
CMD [ "npm", "start" ]