FROM alpine:latest

RUN apk add --update git

ARG version=v0.4.27
ARG filename=mdbook-${version}-x86_64-unknown-linux-musl.tar.gz
RUN wget https://github.com/rust-lang/mdBook/releases/download/${version}/${filename} && \
  tar xvzf ${filename} && \
  rm ${filename} && \
  mv mdbook /usr/local/bin/mdbook
