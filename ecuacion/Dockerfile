FROM python:3.12-slim AS base

WORKDIR /microservicios

# Actualizar sistema y limpiar caché
RUN apt-get update && apt-get upgrade -y && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY multiplica.py .

# Instalar solo lo necesario sin guardar caché
RUN pip install --no-cache-dir fastapi uvicorn pydantic requests mysql-connector-python

CMD ["uvicorn", "multiplica:app", "--host", "0.0.0.0", "--port", "8000"]
