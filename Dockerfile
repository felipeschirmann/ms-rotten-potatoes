# syntax=docker/dockerfile:1

FROM python:3.8-slim

COPY ./src/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY ./src .

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]