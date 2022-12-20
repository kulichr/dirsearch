FROM python:3.12.0a2-alpine
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

ENTRYPOINT ["./dirsearch.py"]
CMD ["--help"]
