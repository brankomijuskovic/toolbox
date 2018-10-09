FROM centos:7
ENV terraform_version 0.11.8
WORKDIR /root
COPY bashrc .bashrc
COPY gitconfig .gitconfig
RUN yum install -y  epel-release ; yum install -y less vim bash-completion git python2-pip unzip
RUN pip install --no-cache-dir --upgrade awscli ansible
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl \
    -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl ; \
    mv ./kubectl /usr/local/bin/kubectl ; chmod +x /usr/local/bin/kubectl
RUN curl -LO https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip ; \
    unzip terraform_${terraform_version}_linux_amd64.zip ; mv ./terraform /usr/local/bin/ ; chmod +x /usr/local/bin/terraform 
RUN yum clean all
RUN rm -rf /var/cache/yum
WORKDIR /
CMD /bin/bash
