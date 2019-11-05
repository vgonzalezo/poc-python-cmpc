FROM python:rc-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN apk add firefox
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
CMD [ "python", "./base_flask.py"]
