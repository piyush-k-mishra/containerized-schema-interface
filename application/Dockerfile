FROM nikolaik/python-nodejs:latest

RUN apt-get update && apt-get upgrade -y && apt-get clean

WORKDIR /srv

COPY requirements.txt /srv
RUN pip3 install -r /srv/requirements.txt
COPY app.py /srv

COPY static /srv/static
WORKDIR /srv/static
RUN npm install
RUN npm run build
WORKDIR /srv

EXPOSE 5000
ENV FLASK_APP=app.py

CMD [ "python3", "app.py"]
CMD flask run -h 0.0.0.0