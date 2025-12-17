# Dockerfile for streamme
# Note: macOS cannot run in Docker containers - Docker uses Linux kernels
# This Dockerfile uses a Linux base image that works well on macOS hosts

FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy application files (will be added when you have code)
# COPY . .

# Expose port (adjust as needed for your application)
EXPOSE 8080

# Default command (update when you have an application)
CMD ["/bin/bash"]
