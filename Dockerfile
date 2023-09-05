FROM --platform=linux/amd64 python:3.9-slim-buster
WORKDIR /app
ADD . /app
RUN python setup.py install
RUN export FLASK_APP=hello
EXPOSE 5000
CMD  export FLASK_APP=hello && flask run --host=0.0.0.0

