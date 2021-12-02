FROM python:3.8-slim

#RUN adduser --disabled-password --gecos "" pavan

RUN mkdir -p /user/root/flaskex

WORKDIR /user/root/flaskex

COPY  . .

#RUN chmod -R 444 /user/pavan/flaskex


RUN pip install -r requirements.txt

#USER pavan

EXPOSE 3000

CMD ["gunicorn","app:app","--bind=0.0.0.0:3000","--workers=5"]

#ENTRYPOINT [ "python3" ]

#CMD ["app.py"]