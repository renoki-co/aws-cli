FROM alpine

RUN apk --no-cache --update add \
    bash \
    less \
    groff \
    jq \
    git \
    gcc \
    curl \
    python3-dev \
    libc-dev \
    python3 \
    py-pip

RUN pip install --upgrade pip \
    awsebcli \
    awscli

RUN curl -L https://github.com/barnybug/cli53/releases/download/0.8.12/cli53-linux-386 > /usr/bin/cli53 && \
    chmod +x /usr/bin/cli53

ENV PAGER="less"

# Expose credentials volume
RUN mkdir ~/.aws
