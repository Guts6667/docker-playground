# Defines node.js as a base image
FROM node:14
# Defines the directory which in we want to work
WORKDIR /app
# Copies the package.json file in the directory
COPY package.json .
# Runs the specified command
RUN npm install
# Copies the rest of the files
COPY . .
# Defines on which port the app must be listened
EXPOSE 3000

CMD [ "node", "app.mjs" ]