FROM python:3.14.0a1-alpine
LABEL maintainer="maurosoria@protonmail.com"

WORKDIR /root/
ADD . /root/

RUN apk add \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    libffi-dev

RUN pip install -r requirements.txt
RUN chmod +x dirsearch.py

ENTRYPOINT ["./dirsearch.py"]
CMD ["--help"]
