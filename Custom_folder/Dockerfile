FROM spark-with-s3-gcs AS spark-with-python

ENV PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH

RUN apt-get update -y \
    && apt-get install -y python3 python3-pip \
    && pip3 install --upgrade pip setuptools \
    # Removed the .cache to save space
    && rm -r /root/.cache && rm -rf /var/cache/apt/*

WORKDIR /app

# Add requirements file
ADD requirements.txt .
# Add application files
ADD . .
# Install application specific python dependencies
RUN pip3 install -r requirements.txt
USER root

ENTRYPOINT [ "/opt/spark/entrypoint.sh" ]