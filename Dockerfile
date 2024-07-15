FROM python:3.12.4

RUN pip3 install flask Flask-Reuploaded

WORKDIR /app
ADD . /app/

EXPOSE 5000

VOLUME /app/uploads
ENV FLASK_APP=filedrop.py
CMD flask run --host=0.0.0.0

