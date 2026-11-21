FROM python:3.12-slim

WORKDIR /app

# Create a non-root user for security
RUN useradd -m appuser

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Switch to non-root user before running the app
USER appuser

EXPOSE 5000
CMD ["python", "app.py"]
