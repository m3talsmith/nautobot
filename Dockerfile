ARG NAUTOBOT_VERSION=2.3.1
ARG PYTHON_VERSION=3.12
FROM ghcr.io/nautobot/nautobot:${NAUTOBOT_VERSION}-py${PYTHON_VERSION}

LABEL org.opencontainers.image.source=https://github.com/m3talsmith/nautobot