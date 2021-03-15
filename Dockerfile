FROM python:3.6.13-alpine3.12
WORKDIR /JenkinsTest
# RUN pip install pylint
# RUN pip install pylint --upgrade
COPY . .
ENTRYPOINT python /JenkinsTest/test.py
CMD pylint /JenkinsTest/test.py

