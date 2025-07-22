# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependency list
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Run using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

