FROM python:3.13-slim
WORKDIR /app
RUN pip install --no-cache-dir uv
COPY . .
RUN uv sync --locked --no-default-groups --group tests
CMD ["uv", "run", "--no-sync", "pytest", "-q"]
