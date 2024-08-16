# Get the base image
FROM node:20-alpine

# Set the working directory
WORKDIR  /app

#copy the package.json to the working directory
COPY package*.json ./

#install the dependencies
RUN npm install

#copy the source code to the working directory
COPY . .

#Expose the port
EXPOSE 5000

#start the application
CMD ["npm", "start"]