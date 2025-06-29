# Start from the official Chroma image
FROM chromadb/chroma:latest

# Set environment variables
ENV IS_PERSISTENT=TRUE \
    PERSIST_DIRECTORY=/data \
    ANONYMIZED_TELEMETRY=FALSE

# Ensure /data directory exists
RUN mkdir -p /data

# Set working directory
WORKDIR /app

# Copy requirement files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Optional: copy rest of your code if needed
# COPY . .

# Expose port
EXPOSE 8000

# Default command
CMD ["chromadb"]
