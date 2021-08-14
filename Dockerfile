FROM openjdk:16-jdk-buster

ARG PLANTUML_VERSION=1.2021.9
ENV PLANTUML_URL="https://repo1.maven.org/maven2/net/sourceforge/plantuml/plantuml/${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar"
ENV PLANTUML_LIMIT_SIZE=8192

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y \
        graphviz \
        python3 \
        python3-pip \
        python3-setuptools \
        fontconfig \
        ttf-dejavu && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    wget -q -O /usr/local/lib/plantuml.jar "${PLANTUML_URL}"

WORKDIR /tmp

COPY requirements.txt requirements.txt

RUN pip3 install --no-cache-dir -r requirements.txt

COPY scripts/plantuml /usr/local/bin/plantuml

WORKDIR /docs

EXPOSE 8000

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
