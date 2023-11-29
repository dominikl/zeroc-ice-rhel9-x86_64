# Dockerfile for lowest common denominator Linux native artifact build
# --------------------------------------------------------------------
FROM redhat/ubi9

ENV SMDEV_CONTAINER_OFF=1

RUN dnf update -y

RUN dnf install -y \
    bzip2-devel \
    expat-devel \
    gcc \
    gcc-c++ \
    libdb-devel \
    libdb-cxx-devel \
    make \
    openssl-devel

# Install mcpp
RUN dnf install -y https://zeroc.com/download/ice/3.7/el8/ice-repo-3.7.el8.noarch.rpm && \
    dnf install -y mcpp-devel
