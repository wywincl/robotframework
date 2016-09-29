FROM python:2.7.12

MAINTAINER john.wang <wywincl@126.com>

#=========================================
# Install robotframework and library.
#=========================================
RUN pip install -U robotframework
RUN pip install -U robotframework-selenium2library
RUN pip install -U requests
RUN pip install -U robotframework-requests

#============
# workspace
#============
RUN mkdir /etc/robot
VOLUME /etc/robot
WORKDIR /etc/robot

ENTRYPOINT ["robot"]
