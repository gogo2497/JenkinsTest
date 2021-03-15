FROM python:3.7.2-alpine3.8
WORKDIR /JenkinsTest
RUN pip install --upgrade pip
RUN pip install pylint --upgrade
COPY . .
ENTRYPOINT pylint /JenkinsTest/test.py
# CMD pylint /JenkinsTest/test.py

