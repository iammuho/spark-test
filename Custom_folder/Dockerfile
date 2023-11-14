# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Java and procps
RUN apt-get update && apt-get install -y \
    openjdk-11-jre-headless \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Set the JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir pyspark

# Run spark_app.py when the container launches
CMD ["python", "./spark_app.py"]