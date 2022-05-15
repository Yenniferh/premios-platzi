FROM python:3.7-alpine3.9

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev

WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

RUN rm -rf .cache/pip \
    &&apk del build-deps

COPY backend/ app/

WORKDIR /app/backend
EXPOSE 8000

ENTRYPOINT [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]