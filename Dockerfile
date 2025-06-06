FROM python:3.12-slim

WORKDIR /app

COPY infla.py requirements.txt ./

RUN pip install --no-cache-dir  -r requirements.txt

CMD ["python", "infla.py"]