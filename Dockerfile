FROM python:3

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

COPY . /

ADD watch.sh /
ADD urls.yaml /

RUN chmod +x /watch.sh

ENTRYPOINT [ "/watch.sh"]
