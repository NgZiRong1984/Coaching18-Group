FROM python:3.12
WORKDIR /usr/local/app

# Install the application dependencies
COPY requirements1.txt ./
RUN pip install --no-cache-dir -r requirements2.txt

# Copy in the source code
COPY src ./src
EXPOSE 5002

# Setup an app user so the container doesn't run as the root user
RUN useradd app
USER app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]