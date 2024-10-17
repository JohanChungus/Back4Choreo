FROM python:3.9

WORKDIR /home/choreouser
COPY / /home/choreouser/

COPY ./requirements.txt /code/requirements.txt
RUN apt update -y 
RUN apt upgrade -y
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN speedtest-cli --share
COPY . .

EXPOSE 7860

CMD ["python", "app.py"]
USER 10001
