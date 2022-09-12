FROM lscr.io/linuxserver/code-server:latest
LABEL description="This is a custom code-server container image"
LABEL maintainer="Jiadong Chen <jiadchen@redhat.com>"
SHELL ["/bin/bash", "-c"]
RUN git clone https://github.com/anyenv/anyenv ~/.anyenv && \
    echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(anyenv init -)"' >> ~/.bashrc && \
    source ~/.bashrc && \
    anyenv --version && \
    anyenv install --force-init && \
    anyenv install nodenv && \
    source ~/.bashrc && \
    echo 'eval "$(nodenv init -)"' >> ~/.bashrc && \
    nodenv install 16.16.0 && \
    nodenv global 16.16.0