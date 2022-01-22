FROM registry.access.redhat.com/ubi8/python-38

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY hello.py .

ENTRYPOINT ["python", "hello.py"]

