# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install Tesseract and Hindi language data
RUN apt-get update && \
    apt-get install -y tesseract-ocr tesseract-ocr-hin libgl1 && \
    apt-get clean

# Copy application code
COPY . .

# Expose port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
