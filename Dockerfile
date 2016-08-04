FROM armhfbuild/ubuntu
MAINTAINER Dmitry A. Grechka <dmitry@grechka.family>

RUN apt-get update && apt-get install -y \    
    isc-dhcpd \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Define default command
CMD ["bash"]