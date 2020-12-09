FROM python:3.9-alpine
WORKDIR /srv

COPY requirements.txt /srv
RUN pip3 install -r /srv/requirements.txt
COPY app.py /srv

COPY static/index.html /srv/static/index.html
COPY static/dist /srv/static/dist

EXPOSE 5000
ENV LC_ALL=en_US
ENV FLASK_APP=app.py

CMD flask run -h 0.0.0.0