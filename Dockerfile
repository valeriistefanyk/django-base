FROM python:3.11-alpine3.16

WORKDIR /src

RUN apk update && apk add --no-cache bash

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]