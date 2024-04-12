FROM debian:12-slim

# Update system and install dependencies.
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y xz-utils \
    && apt-get clean

# Set working directory.
WORKDIR /opt/factorio

# Download Factorio's headless server.
ADD https://factorio.com/get-download/stable/headless/linux64 /tmp
RUN tar -xf /tmp/linux64 --strip-components 1 && rm /tmp/linux64

# Expose volume and network.
VOLUME /opt/factorio/shared
EXPOSE 34197/udp

# Use entrypoint script.
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]