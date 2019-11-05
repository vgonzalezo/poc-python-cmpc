#FROM python:rc-alpine
FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
#RUN apk add firefox-esr

RUN apt update
RUN apt-get install -f libxss1 libappindicator1 libindicator7 
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -f ./google-chrome*.deb

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
CMD [ "python", "./base_flask.py"]
