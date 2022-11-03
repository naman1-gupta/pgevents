FROM python:3.9-slim
#================================================================
# pip install required modules
#================================================================

RUN pip install --upgrade setuptools
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

#==================================================
# Add the latest code
#==================================================

RUN mkdir -p /pgevents
WORKDIR /pgevents

ADD . /pgevents

RUN pip install -e .
CMD ["/bin/bash"]
