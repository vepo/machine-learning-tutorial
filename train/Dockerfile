FROM ubuntu:17.10

RUN apt-get update
RUN apt-get install -y python3-pip python3-dev python-virtualenv
RUN virtualenv --system-site-packages -p python3 ~/tensorflow
RUN ~/tensorflow/bin/easy_install -U pip
RUN ~/tensorflow/bin/pip3 install --upgrade tensorflow  
RUN ~/tensorflow/bin/pip3 install pandas numpy scikit-learn scipy google-api-python-client
RUN mkdir /train
WORKDIR /train

ADD train_data.py train_data.py
ADD rent-data.csv rent-data.csv 
RUN ~/tensorflow/bin/python train_data.py

EXPOSE 6006

CMD ["/root/tensorflow/bin/tensorboard", "--logdir=/train/logs"] 
