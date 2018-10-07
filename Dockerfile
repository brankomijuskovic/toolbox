FROM amazonlinux
WORKDIR /root
COPY bashrc .bashrc
COPY gitconfig .gitconfig
RUN yum install -y bash-completion git python2-pip epel less vim
RUN pip install --no-cache-dir --upgrade awscli ansible docker-compose
RUN yum clean all
RUN rm -rf /var/cache/yum
WORKDIR /
CMD /bin/bash
