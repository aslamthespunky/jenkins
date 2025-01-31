FROM python:3.11

RUN apt-get update && apt-get install -y python3-pip python3-venv

WORKDIR /data

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


