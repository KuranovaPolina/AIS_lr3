FROM python:3.7-slim

# for flask web server
EXPOSE 7878

# add files
ADD . /app

# set working directory
WORKDIR /app

# install required libraries
RUN pip install -r requirements.txt

# CMD gunicorn -w 1 -b :7878 app:app

CMD python app.py
