# Use the official Rasa SDK image as a base
FROM rasa/rasa:latest-full

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV PORT 5005

# Copy the Rasa project files
COPY . /app

# Set the working directory
WORKDIR /app

# Expose the port
EXPOSE 5005

# Set the entrypoint to Rasa
ENTRYPOINT ["rasa"]

# Default command to run the server
CMD ["run", "--model", "models", "--enable-api", "--cors", "*", "--port", "5005"]
