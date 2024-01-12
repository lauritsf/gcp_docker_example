FROM python:3.8-slim

# install python 
RUN apt update && \
    apt install --no-install-recommends -y build-essential gcc && \
    apt clean && rm -rf /var/lib/apt/lists/*

COPY testfile.txt testfile.txt
COPY main.py main.py
WORKDIR /



ENTRYPOINT ["python", "-u", "main.py"]
