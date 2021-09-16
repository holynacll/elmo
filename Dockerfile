# Build from a recent python3 version (64 bit python required for Tensorflow)
FROM python:3.7

RUN apt update -y && apt install -y build-essential python3-pip

COPY . /app

WORKDIR /app 

# Install required python modules
RUN pip3 install -r requirements.txt

