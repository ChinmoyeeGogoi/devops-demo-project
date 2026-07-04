# Base image — Python 3.11 on a lightweight Linux
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements first (Docker caches this layer if unchanged — faster rebuilds)
COPY requirements.txt .

# Install dependencies inside the container
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose port 5000 so traffic can reach Flask
EXPOSE 5000

# Command to run when container starts
CMD ["python", "app.py"]