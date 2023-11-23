FROM python:3

RUN apt-get update && \
    apt-get install -y libjpeg-dev zlib1g-dev

WORKDIR /app
ADD . .
RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["python3", "run.py"]
