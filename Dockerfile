FROM python:3.8-slim

LABEL MAINTAINER="******@dell.com"

RUN python3 -m pip install pandas==1.1.5
RUN python3 -m pip install dash==2.5.1
RUN python3 -m pip install gunicorn==20.1.0
RUN python3 -m pip install Werkzeug==2.2.3

ADD visual_diskperf.py /

EXPOSE 8082

CMD gunicorn --timeout 1000 -b 0.0.0.0:8082 visual_diskperf:server
