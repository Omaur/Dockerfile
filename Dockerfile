# Use Python slim image
FROM python:3.12-slim

# Set environment variable
ARG USERNAME
ENV USERNAME=${USERNAME}

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app
COPY app.py .

# Expose the port Flask will run on
EXPOSE 5000

# Run the Flask app
CMD ["sh", "-c", "echo the user is $USERNAME && python app.py"]