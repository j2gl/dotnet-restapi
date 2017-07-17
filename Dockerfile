FROM microsoft/dotnet:1.1-sdk

MAINTAINER j2gl

EXPOSE 5000

VOLUME /src
WORKDIR /src

RUN echo "alias ll='ls -la --color'" >> /root/.bashrc

