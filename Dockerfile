FROM python:3.7-alpine

ENV PYHTONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . /code/

EXPOSE 8000
CMD ["python", "/code/manage.py", "runserver", "0.0.0.0:8000"]