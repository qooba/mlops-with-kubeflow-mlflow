#!/bin/bash

docker build -t qooba/mlflow .
docker build -t qooba/mlflow:serving -f Dockerfile.serving .
