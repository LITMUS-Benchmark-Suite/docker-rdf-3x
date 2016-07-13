FROM debian:jessie

# Install packages.
RUN apt-get update && apt-get install -y \
            git \
            make \
            gcc-4.7 \
            build-essential g++ \
 
    && apt-get clean

# Install gh-rdf3x and clean up
RUN git clone https://github.com/gh-rdf3x/gh-rdf3x.git \
    && cd gh-rdf3x \
    && make

# create directory for gh-rdf3x logs
RUN mkdir /var/log/gh-rdf3x
