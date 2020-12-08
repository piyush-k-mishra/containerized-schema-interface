FROM node:latest

RUN apt-get update
RUN apt-get install -y python3.9 python3-pip git

WORKDIR /srv

COPY requirements.txt /srv
RUN pip3 install -r /srv/requirements.txt
COPY app.py /srv

COPY static /srv/static
RUN npm install /srv/static
RUN cd ..

EXPOSE 5000
ENV FLASK_APP=app.py

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

CMD [ "python3", "app.py"]
CMD flask run -h 0.0.0.0