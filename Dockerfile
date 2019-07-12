# Pull base image
FROM python:3.6-stretch
MAINTAINER mhadaniya

# Set environment varibles
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

# Install dependencies
RUN pip install pipenv
COPY Pipfile Pipfile.lock /app/
RUN pipenv install --system
