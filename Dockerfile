FROM python:3.9

WORKDIR /app/backend

COPY requirements.txt /app/backend

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt
RUN pip install mysqlclient 

COPY . /app/backend

EXPOSE 8000
