FROM debian
COPY src/P25Reflector /opt/P25Reflector
EXPOSE 41000
RUN /opt/P25Reflector P25Reflector.ini