FROM python:3.9

WORKDIR /home/choreouser
COPY / /home/choreouser/
RUN chmod 777 /home/choreouser/
COPY ./requirements.txt /code/requirements.txt
RUN apt update -y 
RUN apt upgrade -y
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip install speedtest-cli
RUN speedtest-cli --share
COPY . .

EXPOSE 7860

CMD ["python", "app.py"]
USER 10001
