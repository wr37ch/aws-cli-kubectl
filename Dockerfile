FROM alpine:latest
ENV AWSCLI_VERSION 1.16.278
ENV KUBECTL_VERSION 1.16.2
RUN apk add -U --no-cache python3 ca-certificates curl \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}
RUN curl -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && chmod +x /usr/local/bin/kubectl
