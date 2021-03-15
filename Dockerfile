FROM python:3.7.2-alpine3.8
WORKDIR /JenkinsTest
RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc and-build-dependencies
RUN pip install --upgrade pip
RUN pip install pylint --upgrade
COPY . .
ENTRYPOINT pylint /JenkinsTest/test.py
# CMD pylint /JenkinsTest/test.py

