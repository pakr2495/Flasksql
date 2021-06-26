FROM python:3.8-slim

WORKDIR /root/app/flaskex

COPY  . .

RUN pip install -r requirements.txt

EXPOSE 3000

CMD ["gunicorn","app:app","--bind=0.0.0.0:3000","--workers=5"]