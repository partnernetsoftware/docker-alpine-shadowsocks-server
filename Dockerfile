FROM frolvlad/alpine-python3

RUN pip install shadowsocks

ENTRYPOINT ["/usr/bin/ssserver"]
