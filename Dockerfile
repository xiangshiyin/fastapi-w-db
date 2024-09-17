FROM python:3.12

# Set working directory
WORKDIR /app

# Install Poetry
RUN pip install poetry

# COPY pyproject.toml and poetry.lock
COPY pyproject.toml poetry.lock /app/

# Install dependencies
RUN poetry install --no-root

# Copy app code
COPY app /app/app

# Expose port 8000
EXPOSE 8000

# Run the FastAPI app
CMD ["poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port": "8000"]
