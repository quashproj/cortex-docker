FROM thehiveproject/cortex:latest

# install git and python3
RUN apt-get update && apt-get install -y git python3 python3-pip

# clone analyzers from git 
RUN git clone https://github.com/TheHive-Project/Cortex-Analyzers /opt/Cortex-Analyzers
COPY ./Cortex-Analyzers/ /opt/Cortex-Analyzers/
RUN chown -R cortex:cortex /opt/Cortex-Analyzers

# change directory to /opt 
RUN cd /opt; for I in $(find Cortex-Analyzers -name 'requirements.txt'); do pip3 install -r $I || true; done
