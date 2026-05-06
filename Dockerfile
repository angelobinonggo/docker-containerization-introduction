# ============================================================
# Dockerfile - Lab Manual 1: Introduction to Docker
# ============================================================
# Base image: official Python 3.10 runtime
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy all project files from the host into the container
COPY . .

# Install Python dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Default command to run when the container starts
CMD ["python", "app.py"]
