FROM python:3.12-slim AS base

WORKDIR /microservicios

RUN apt-get update && apt-get upgrade -y && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY suma.py .

RUN pip install --no-cache-dir fastapi uvicorn pydantic requests

CMD ["uvicorn", "suma:app", "--host", "0.0.0.0", "--port", "8000"]
