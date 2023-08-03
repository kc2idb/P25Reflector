FROM debian
VOLUME [ "data" ]
RUN apt update && apt upgrade -y
RUN apt install build-essential -y
COPY src/P25Reflector /data
WORKDIR /data
RUN make && make install
CMD P25Reflector P25Reflector.ini




