# Machine Learning Tutorial

This is a simple tutorial of how create a Tensorflow model and how to use this model in a application.

## What is Tensorflow

Tensor is a Google framework that helps you add Machine Learning to your application.

## How Machine Learning works

Machines will never learning anything. 

Machine only recognizes patterns.

So the first step for using a Machine Learning approaches is teach the machine to recognizes a pattern. This means you should train the machine and creates a model.

## Creating the trainning environment

The first step for using Tensorflow is create the trainning environment. 

You can see at [Dockerfile](train/Dockerfile) who you can setup the environment for trainging and prepare the data.

## Creating the model

With everything running fine, you should start trainning your model. You can see [here](train/train_data.py) how it can be done.

## Validating the data

Running the train container, you can inspect the trainning you had done at http://localhost:6006.

> docker build -t mlt-trainning train/
> docker run -p 6006:6006 --name mlt -i -t mlt

## Serving the data

You can see in the gcloud scripts how [install](train/gcloud-activate.sh) an [upload](train/upload-model.sh) the model to Google Cloud.

Before you run theses scripts you should:

1. Create a project at [Google Cloud Console](https://console.cloud.google.com)
2. Create a credentials file at `train/credentials.json`
3. Enable billing, if you do not enable you cannot upload the model 