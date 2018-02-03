FROM continuumio/anaconda3:latest

MAINTAINER Soloman Weng "soloman.weng@gmail.com.au"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD environment.yml /usr/src/app/environment.yml
RUN ["conda", "env", "create", "python=3.5"]

ADD notebook /usr/src/app/notebook

EXPOSE 8888
