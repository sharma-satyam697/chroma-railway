# Start from the official Chroma image
FROM chromadb/chroma:latest

# Set environment variables
ENV IS_PERSISTENT=TRUE \
    PERSIST_DIRECTORY=/data \
    ANONYMIZED_TELEMETRY=FALSE

# Ensure /data directory exists
RUN mkdir -p /data

# Working directory
WORKDIR /data

# Expose Chroma port
EXPOSE 8000

# Default command
CMD ["chromadb"]
