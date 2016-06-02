#refer:   frolvlad/alpine-python3
#refaddr: https://github.com/frol/docker-alpine-python3/blob/master/Dockerfile

FROM alpine

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache

RUN pip install shadowsocks

ENTRYPOINT ["/usr/bin/ssserver"]
