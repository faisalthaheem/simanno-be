FROM python:3.8

WORKDIR /simanno/be

RUN pip3 install pillow \
    scikit-image \
    cryptography \
    flask \
    flask-compress \
    flask-cors \
    psutil \
    paho-mqtt \
    pyyaml \
    netifaces

ADD ws/ /simanno/be

EXPOSE 5000

CMD python3 imanno.py