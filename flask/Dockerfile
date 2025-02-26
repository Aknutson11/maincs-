# Use an official Python runtime as the base image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

#install vim
RUN apt-get update
RUN apt-get install -y vim

# Install more packages for api flask app
RUN python3 -m pip install --upgrade pip

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Define the environment variable for Flask
ENV FLASK_APP=obiservice.py

#create default logging file
RUN mkdir -p /app/logs
RUN echo "" > /app/logs/error.log

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]

