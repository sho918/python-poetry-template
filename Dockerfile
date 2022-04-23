FROM python:3.10-bullseye
ENV PYTHONUNBUFFERED=1

RUN pip install poetry

WORKDIR /app
COPY pyproject.toml* poetry.lock* ./
RUN poetry config virtualenvs.create false
RUN poetry install
