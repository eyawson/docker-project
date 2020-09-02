FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# INstall packages from requirements directory
# hadolint ignore-DL3013
RUN pip install --upgrade pip==20.2.2 &&\
        pip install --trusted-host pypi.python.org -r requirements.txt