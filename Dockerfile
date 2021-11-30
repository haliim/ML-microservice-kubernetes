FROM python:3.7.3-stretch
#FROM python:3.9.9

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/
#COPY . nlib /app/

## Step 3:
#RUN pip install --upgrade pip --no-cache-dir --requirement &&\
#    pip install --trusted-host --no-cache-dir pypi.python.org --requirement requirements.txt
#RUN pip install --upgrade pip &&\
#    pip install --trusted-host pypi.python.org -r requirements.txt
RUN    pip install --trusted-host pypi.python.org -r requirements.txt
#hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
