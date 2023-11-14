# Use the Apache Spark base image
FROM apache/spark-py:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Run the application
CMD ["/opt/spark/bin/spark-submit", "./spark_app.py"]