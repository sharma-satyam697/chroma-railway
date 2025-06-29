# Use an official Python image
FROM python:3.10-slim

# Set environment variables
ENV IS_PERSISTENT=TRUE \
    PERSIST_DIRECTORY=/data \
    ANONYMIZED_TELEMETRY=FALSE

# Create a working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make sure /data directory exists
RUN mkdir -p /data

# Expose the Chroma default port
EXPOSE 8000

# Start the Chroma server
CMD ["chromadb"]
