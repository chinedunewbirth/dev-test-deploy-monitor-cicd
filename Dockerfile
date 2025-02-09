# Base Image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip Install --no-cache-dir -r requirements.txt

# Copy current directory to container app directory
COPY . .

# Expose port 5000
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]