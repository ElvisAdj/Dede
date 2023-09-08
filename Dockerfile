FROM --platform=linux/arm64 python
WORKDIR /app
ADD . /app
RUN python setup.py install
RUN export FLASK_APP=hello
EXPOSE 5000
CMD  export FLASK_APP=hello && flask run --host=0.0.0.0
