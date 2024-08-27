FROM ubuntu:22.04 

RUN apt-get update && \ 
    apt-get install -qy wget ssh gcc vim make curl

RUN wget https://github.com/haad/proxychains/archive/refs/tags/proxychains-4.4.0.tar.gz && \
    tar -xzf proxychains-4.4.0.tar.gz && \
    cd proxychains-proxychains-4.4.0; ./configure

COPY Makefile /proxychains-proxychains-4.4.0/

RUN cd /proxychains-proxychains-4.4.0/;make && make install

