FROM nikolaik/python-nodejs:python3.9-nodejs18

RUN apt update && apt upgrade -y

# copying the directory
COPY start /start

# run the program
CMD ["/bin/bash", "/start"]
