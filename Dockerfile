FROM alpine

LABEL maintainer="Evgenii Sviderskii <esviderskii@gmail.com>"

LABEL com.sviderskii.image.title="esviderskii/helm-client" \
      com.sviderskii.image.url="https://helm.sh/docs/"

ENV HELM_LATEST_VERSION="v3.2.4"

ADD https://get.helm.sh/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz /tmp

RUN cd /tmp \
    && tar -xf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz \
    && mv linux-amd64/helm /usr/local/bin \
    && rm -f /tmp/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz

ENTRYPOINT ["helm"]
CMD ["help"]
