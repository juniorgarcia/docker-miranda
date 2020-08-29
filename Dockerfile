FROM debian:buster-slim
SHELL [ "/bin/bash", "-c" ]
RUN apt update
RUN apt install build-essential wget vim rlwrap -y
RUN wget http://www.cs.kent.ac.uk/people/staff/dat/ccount/click.php?id=11 -O mira-2066-src.tgz && \
    tar -xvf mira-2066-src.tgz && \
    cd miranda && \
    rm -rf mira-2066-src.tgz
WORKDIR /miranda
RUN make install
COPY mira.sh /
WORKDIR /
# Replacement to use mira.sh instead, which fixes the navigation on interpreter
RUN mv /usr/bin/mira /usr/bin/_mira
RUN chmod +x mira.sh
RUN mv mira.sh /usr/bin/mira

CMD ["bash"]
