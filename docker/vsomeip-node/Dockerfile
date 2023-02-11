FROM ubuntu:20.04

LABEL maintainer="user"
LABEL description="build vsomeip"
# avoid interaction mode in tzdata
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo
ENV VSOMIP_VERSION=3.1.16.1
ENV VSOMEIP_PREFIX=/usr/local/vsomeip

SHELL ["/bin/bash", "-c"]

RUN    apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y tzdata gcc build-essential cmake make wget libtool unzip net-tools \
                          libboost-system1.71-dev libboost-thread1.71-dev libboost-log1.71-dev \
    && cat /usr/share/zoneinfo/${TZ} > /etc/localtime \
    && dpkg-reconfigure tzdata \
    && iproute2 iputils-ping net-tools

RUN    wget -O vsomeip.zip https://github.com/GENIVI/vsomeip/archive/${VSOMIP_VERSION}.zip \
    && unzip vsomeip.zip \
    && mkdir -p ${VSOMEIP_PREFIX} \
    && pushd vsomeip-${VSOMIP_VERSION} \
    && mkdir build \
    && cd build \
    && cmake -DENABLE_SIGNAL_HANDLING=1 -DENABLE_MULTIPLE_ROUTING_MANAGERS=1 -DCMAKE_INSTALL_PREFIX:PATH=${VSOMEIP_PREFIX} .. \
    && make \
    && make install \
    && popd \
    && rm -rf vsomeip-${VSOMIP_VERSION} vsomeip.zip

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]