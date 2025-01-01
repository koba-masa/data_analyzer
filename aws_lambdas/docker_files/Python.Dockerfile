FROM python:3.13.0

WORKDIR /app/data_analyzer

RUN pip install uv

COPY pyproject.toml uv.lock /app/data_analyzer/

RUN uv sync
