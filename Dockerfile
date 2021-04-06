FROM ubuntu:20.04

RUN apt install postgresql-client-12

RUN mkdir /shopify
WORKDIR /shopify
COPY . /shopify

EXPOSE 3000

CMD ["bash", "mgr.sh"]
