FROM python:3.11

WORKDIR /app
COPY . /app

RUN pip install fastapi uvicorn sqlalchemy psycopg2-binary python-dotenv

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
