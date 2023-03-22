FROM python:3.9-slim-buster

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir django

EXPOSE 8001

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
