FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /musix
WORKDIR /musix
# copying the directory
COPY start /start

# run the program
CMD ["/bin/bash", "/start"]
