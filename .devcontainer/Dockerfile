# Start from the Python 3.10 image based on Debian Bullseye
FROM python:3.10-bullseye

# avoid warnings by switching to noninteractive - may turn off later
ENV DEBIAN_FRONTEND=noninteractive

# install python
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Update alternatives to use python3.10 as the default python3

# install pandoc, pandoc-citeproc, and dependencies for quarto
RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    pandoc-citeproc \
    curl \
    gdebi-core \
    && rm -rf /var/lib/apt/lists/*

# Download and install Quarto and clean up in the same layer
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb \
    && gdebi --non-interactive quarto-linux-amd64.deb \
    && rm -f quarto-linux-amd64.deb

# use pip to install needed packages
RUN pip install --upgrade pip
RUN pip install jupyter nbclient nbformat matplotlib pandas plotly

WORKDIR /workspace

EXPOSE 8888

CMD ["bash"]