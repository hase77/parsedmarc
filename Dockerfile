FROM python:3.8-slim-buster

ENV PARSEDMARC_VERSION 6.11.0
RUN apt-get update && apt-get install -y libxml2-dev libxslt-dev
RUN pip install -U pip setuptools
RUN pip install -U parsedmarc==$PARSEDMARC_VERSION
RUN apt-get remove -y libxml2-dev libxslt-dev
RUN apt-get autoremove -y
RUN apt-get autoclean -y
RUN rm -rf /root/.cache/ \
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/

CMD ["parsedmarc", "-c", "/etc/parsedmarc.ini"]
