#NOTE: there is no fixed tag as of now
ARG LINTER_VERSION=latest
ARG REVIEWDOG_VERSION=v0.9.17

FROM wemakeservices/wemake-python-styleguide:${LINTER_VERSION}

LABEL maintainer="Fabrizio Bellicano <bellicaf@tcd.ie>" \
    image="linuxbandit/pythonlinter-reviewdog" \
    repository="https://github.com/linuxbandit/pythonlinter-reviewdog" \
    vendor="jobtome" \
    description="Python linter 'wemake-python-styleguide' with bash and Review Dog inside." \
    license="MIT"

ADD https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh install.sh

RUN chmod +x install.sh \
      && ./install.sh -b /usr/local/bin/ ${REVIEWDOG_VERSION} \
      && rm install.sh\
      && apk add --no-cache bash

ENTRYPOINT [ "/bin/bash" ]