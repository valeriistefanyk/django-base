FROM python:3.10

ADD . /src
WORKDIR /src

RUN pip install -r requirements.txt

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]