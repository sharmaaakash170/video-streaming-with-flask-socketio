FROM python:3.10

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip3 install -r requirements.txt

CMD ["python","test.py","0.0.0.0:5000"]
