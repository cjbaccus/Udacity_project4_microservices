[![cjbaccus](https://circleci.com/gh/cjbaccus/Udacity_project4_microservices.svg?style=shield)](https://circleci.com/gh/cjbaccus/Udacity_project4_microservices)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setting up and configuring the Environment

* Create python virtualenv and activate:
  * python -m venv ~/.devops
  * source ~/.devops/bin/activate
* Run ``` make install ``` to install required dependancies

### Executing the  `app.py` 

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
  * This will differ depending on your host OS, this project was build using AWS Cloud9 environment, and it was pre-installed.
* Setup and Configure Kubernetes locally
  * Once again depending on OS, I installed minikube and used it for my kubernetes environment.
* Create Flask app in Container
* Run via kubectl

## File structure

`output of tree -a (excluding git directory)`:
```
├── .circleci
│   └── config.yml
|── Dockerfile
├── Makefile
├── README.md
├── app.py
├── hadolint
├── make_prediction.sh
├── model_data
│   ├── boston_housing_prediction.joblib
│   └── housing.csv
├── output_txt_files
│   ├── docker_out.txt
│   └── kubernetes_out.txt
├── requirements.txt
├── run_docker.sh
├── run_kubernetes.sh
└── upload_docker.sh
```