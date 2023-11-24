# Use a base image with Python
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pip

# Set environment variables
ENV FLASK_APP=app.py

# Expose the port on which your Flask app runs
# EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]