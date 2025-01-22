FROM docker.io/alpine
RUN apk update 
RUN apk add python3 && apk add py3-flask && apk add curl
WORKDIR /opt/app
COPY . .
EXPOSE 5000
CMD ["python","main.py"]

