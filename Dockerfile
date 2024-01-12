FROM python:3.8-slim

# install python 
RUN apt update && \
    apt install --no-install-recommends -y build-essential gcc && \
    apt clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt
COPY main.py main.py
WORKDIR /
RUN pip install -r requirements.txt --no-cache-dir
RUN dvc pull

ENTRYPOINT ["python", "-u", "main.py"]
