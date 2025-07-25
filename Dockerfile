FROM nikolaik/python-nodejs:python3.11-nodejs20
RUN apt-get update && apt-get upgrade -y
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app/
RUN python -m pip install --upgrade pip
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD bash start.sh
