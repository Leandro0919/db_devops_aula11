FROM ubumtu: latest
RUN apt-get update -y
run apt-get install -y python-pip python-dev build-essential
COPY . /
WORKDIR /
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["python", "setup_database.py"]