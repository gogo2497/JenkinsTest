FROM python:3.7.2-stretch
WORKDIR /JenkinsTest
# RUN apk-get update \
#     && apk-get install -y --no-install-recommends gcc and-build-dependencies

RUN pip install --upgrade pip
RUN pip install pylint --upgrade
RUN apt-get update && \
      apt-get -y install sudo
RUN apt-get install sudo
COPY . .
RUN sudo ./pylint.sh

# CMD pylint /JenkinsTest/test.py

