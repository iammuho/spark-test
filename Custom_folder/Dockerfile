FROM python:3.8-slim

WORKDIR /usr/src/app

# Install Java and procps with more verbose output
RUN apt-get update -qq && apt-get install -y -qq \
    openjdk-11-jre-headless \
    procps \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/

COPY . .

RUN pip install --no-cache-dir pyspark

CMD ["python", "./spark_app.py"]