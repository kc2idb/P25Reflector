FROM debian
COPY src/P25Reflector /opt/P25Reflector
EXPOSE 41000
WORKDIR /opt/P25Reflector
CMD P25Reflector P25Reflector.ini
#RUN makeandrun.sh