FROM microsoft/dotnet:1.1-sdk

MAINTAINER j2gl

EXPOSE 5000

VOLUME /app
WORKDIR /app

RUN echo "alias ll='ls -la --color'" >> /root/.bashrc

