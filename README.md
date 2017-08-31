# Machine Learning Tutorial

This is a simple tutorial of how create a Tensorflow model and how to use this model in a application.

## When use Machine Learning

With Machine Learning you can: 

* Predict values using the historical data.
* Classify based on features
* ...

## What is Tensorflow

Tensor is a Google framework that helps you add Machine Learning to your application.

## How Machine Learning works

Machines will never learning anything. 

Machine only recognizes patterns.

So the first step for using a Machine Learning approaches is teach the machine to recognizes a pattern. This means you should train the machine and creates a model.

### So they learn!

No! There is a mathematical model to preview the output based on a train.

Let me explain better.

Our trainning set is composed of rows, each row is a historical data. For each row we have at least one feature and one real data. Let's create an equation where ![equation](https://latex.codecogs.com/svg.latex?A) is a matrix for all the input values and ![equation](https://latex.codecogs.com/svg.latex?b) is all the real data.

![equation](https://latex.codecogs.com/svg.latex?Ax=b)

Now we are guessing that exists a vector ![equation](https://latex.codecogs.com/svg.latex?x) that can convert each input data in their respective output.

![equation](https://latex.codecogs.com/svg.latex?x) does not exists! But if we find any values that minimizes the error, we can contruct a model that predicts the output.

## Creating the trainning environment

The first step for using Tensorflow is create the trainning environment. 

You can see at [Dockerfile](train/Dockerfile) who you can setup the environment for trainging and prepare the data.

## Creating the model

With everything running fine, you should start trainning your model. You can see [here](train/train_data.py) how it can be done.

## Validating the data

Running the train container, you can inspect the trainning you had done at http://localhost:6006.

```bash
docker build -t mlt-trainning train/
docker run -p 6006:6006 --name mlt -i -t mlt
```

## Serving the data

You can see in the gcloud scripts how [install](train/gcloud-activate.sh) an [upload](train/upload-model.sh) the model to Google Cloud.

Before you run theses scripts you should:

1. Create a project at [Google Cloud Console](https://console.cloud.google.com)
2. Create a credentials file at `train/credentials.json`
3. Enable billing, if you do not enable you cannot upload the model 