FROM pypy:3-7

ENV PARSEDMARC_VERSION 6.8.2
RUN apt-get update \
    && apt-get install -y libxml2-dev libxslt-dev python-dev \
    && pip install -U pip setuptools \
    && pip install -U parsedmarc==$PARSEDMARC_VERSION \
    && rm -rf /root/.cache/ \
    && rm -rf /var/lib/{apt,dpkg}/

CMD ["parsedmarc", "-c", "/etc/parsedmarc.ini"]
