FROM ubuntu:20.04

# avoid warnings by switching to noninteractive - may turn off later
ENV DEBIAN_FRONTEND=noninteractive

# install python
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# install pandoc, pandoc-citeproc, and dependencies for quarto
RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    pandoc-citeproc \
    curl \
    gdebi-core \
    && rm -rf /var/lib/apt/lists/*

# download and install quarto
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb \
    && gdebi --non-interactive quarto-linux-amd64.deb \
    # this removes the downloaded .deb file, cleaning up in the same layer as the action was done.
    && rm -f quarto-linux-amd.64

# use pip to install neede packages
RUN pip install --upgrade pip
RUN pip install jupyter nbclient nbformat matplotlib pandas plotly

WORKDIR /app

CMD ["bash"]