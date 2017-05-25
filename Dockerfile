FROM python:3

# run with `docker run -p 9020:9020 multilog`

ADD . /tmp/
WORKDIR /tmp/
RUN cd /tmp/ && python3 setup.py install
RUN mkdir -p /var/log/multiLogger/multiLogger.log/

ENTRYPOINT multilog
