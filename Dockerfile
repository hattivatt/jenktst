FROM ubuntu:20.04

RUN apt update && apt install -y postgresql-client-12

RUN mkdir /shopify
WORKDIR /shopify
COPY . /shopify

EXPOSE 3000

CMD ["bash", "mgr.sh"]
