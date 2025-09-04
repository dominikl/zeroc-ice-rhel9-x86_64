# Dockerfile for lowest common denominator Linux native artifact build
# --------------------------------------------------------------------
FROM rockylinux/rockylinux:10

RUN dnf update -y

RUN dnf install -y 'dnf-command(config-manager)'

RUN dnf config-manager --set-enabled crb

RUN dnf install -y epel-release

RUN dnf update -y

RUN dnf install -y \
    bzip2-devel \
    expat-devel \
    gcc \
    gcc-c++ \
    make \
    openssl-devel

RUN dnf install -y libdb-devel libdb-cxx-devel

# Install mcpp
RUN dnf install -y https://zeroc.com/download/ice/3.7/el8/ice-repo-3.7.el8.noarch.rpm && \
    dnf install -y mcpp-devel
