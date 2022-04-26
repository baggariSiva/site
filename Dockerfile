FROM node:latest
#Add a work directory
WORKDIR /app
#Cache and Install dependencies
COPY package.json .
RUN npm install
#Copy app files
COPY . .
#Expose port
EXPOSE 3000
#Build command
RUN npm run build
#Start the app
CMD npm run start
