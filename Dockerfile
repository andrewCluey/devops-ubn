FROM ubuntu:18.04

# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
        ca-certificates \
        wget \
        curl \
        jq \
        git \
        iputils-ping \
        libcurl3 \
        libicu55 \
        libunwind8 \
        openssh-client \
        unzip \
        netcat

#Download AzCopy
#RUN wget https://aka.ms/downloadazcopy-v10-linux

#Expand Archive
#RUN tar -xvf downloadazcopy-v10-linux

#Move AzCopy to the destination you want to store it
#RUN cp ./azcopy_linux_amd64_*/azcopy /usr/bin/

#WORKDIR /azp

#COPY ./start.sh .
#RUN chmod +x start.sh

#CMD ["./start.sh"]
