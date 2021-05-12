FROM tensorflow/tensorflow
RUN apt-get update && yes | apt-get upgrade
RUN pip install --upgrade pip
COPY . /tf
RUN pwd
CMD ["python","tf/tf.py"]
