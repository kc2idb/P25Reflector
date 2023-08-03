FROM debian
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install build-essential && \
    rm -rf /var/lib/apt/lists/*
COPY src/P25Reflector /opt/P25Reflector
EXPOSE 41000/udp
WORKDIR /opt/P25Reflector
#CMD "P25Reflector", "P25Reflector.ini"
RUN make
CMD ./P25Reflector P25Reflector.ini

FROM nginx
COPY src/P25Reflector-Dashboard /usr/share/nginx/html

