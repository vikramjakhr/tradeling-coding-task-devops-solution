# Node alipine base image 
FROM node:10.11.0-alpine

# Meta
LABEL maintainer="vikram.jakhr@gmail.com"
LABEL node_version="10.11.0"
LABEL description="Tradeling sample todo app"

# Environment variables
ENV APP_HOME /app
ENV PORT 8080

# Create home work directory
RUN mkdir -p $APP_HOME

# Set APP_HOME as work directory
WORKDIR $APP_HOME

# Copy pacakge.json to work directory
COPY package.json $APP_HOME

# Install dependencies
RUN npm install

# Copy code to work directory
COPY . $APP_HOME

# Expose application port
EXPOSE $PORT

# Run the application
CMD [ "npm", "start" ]