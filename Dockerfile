FROM python:3.8-slim-buster
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Command to run the Flask application
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
