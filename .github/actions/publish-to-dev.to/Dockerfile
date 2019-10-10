FROM python:3

RUN pip install requests


COPY publish.py /publish.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
