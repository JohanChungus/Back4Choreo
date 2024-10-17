FROM python:3.9

WORKDIR /home/choreouser
COPY / /home/choreouser/

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY . .

EXPOSE 3000

CMD ["python", "app.py"]
USER 10001
