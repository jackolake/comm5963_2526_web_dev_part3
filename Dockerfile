# Use a small Python base image
FROM python:3.14.3-slim

# Set the container working directory
WORKDIR /app

# Copy dependency definitions into the image
COPY requirements.txt ./
# Install Python dependencies.
RUN pip install -r requirements.txt

# Copy the Flask app into the image
COPY app.py ./
# Copy the HTML files used by Flask
COPY practice ./practice

# Document the port the app uses
EXPOSE 5000

# Run the app with Python
CMD ["python", "app.py"]

