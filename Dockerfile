FROM python:3.6.13-alpine3.12
WORKDIR /JenkinsTest
COPY . .
ENTRYPOINT python /JenkinsTest/Test.py

