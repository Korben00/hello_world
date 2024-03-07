ARG BUILD_FROM=ubuntu:latest
FROM $BUILD_FROM

# Install requirements for add-on
RUN apt-get update && \
    apt-get install -y python3

# Python 3 HTTP Server serves the current working dir
# So let's set it to our add-on persistent data directory.
WORKDIR /data

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
