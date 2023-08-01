from debian
copy src/P25Reflector /opt/P25Reflector
EXPOSE 41000
run /opt/P25Reflector P25Reflector.ini