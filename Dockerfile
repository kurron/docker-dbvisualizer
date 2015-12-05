FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="DbVisualizer" org.kurron.ide.version=9.2.13

ADD https://www.dbvis.com/product_download/dbvis-9.2.13/media/dbvis_unix_9_2_13.tar.gz /tmp/ide.tar.gz

RUN mkdir -p /opt/ide && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/ide && \
    rm /tmp/ide.tar.gz

USER developer:developer
WORKDIR /home/developer
ENTRYPOINT ["/opt/ide/dbvis"]
