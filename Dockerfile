# Use the official Rasa SDK image as a base
FROM rasa/rasa:latest-full

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Copy the Rasa project files
COPY . /app

# Set the working directory
WORKDIR /app

# Expose the port
EXPOSE 5005

# Run the Rasa server
CMD ["rasa", "run", "--model", "models", "--enable-api", "--cors", "*"]