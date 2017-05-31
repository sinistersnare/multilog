FROM python:3

ADD . /multilog
WORKDIR /multilog
RUN cd /multilog && python3 setup.py install
RUN mkdir /logconf && touch /logconf/logging.ini

ENTRYPOINT multilog -c /logconf/logging.ini -s 0.0.0.0
