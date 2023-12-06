FROM python:3.11-slim as python_base

RUN mkdir /project
WORKDIR /project

RUN apt-get update -y && \
apt-get install wget cmake git make sudo -y && \
wget https://raw.githubusercontent.com/emp-toolkit/emp-readme/master/scripts/install.py && \
python3 install.py  --deps --tool --ot --agmpc