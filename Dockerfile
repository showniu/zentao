#FROM supervisiod
FROM ubuntu

MAINTAINER   lijiapeng@boxfish.cn
#COPY ./run.sh /
#
#
#
COPY  sources.list  /etc/apt/sources.list
RUN apt-get  update
RUN apt-get install  -y  supervisor
RUN mkdir -p  /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


ADD  http://dl.cnezsoft.com/zentao/8.2.1/ZenTaoPMS.8.2.1.zbox_64.tar.gz  /
RUN tar zxvf  ZenTaoPMS.8.2.1.zbox_64.tar.gz -C /opt/

EXPOSE 80


CMD ["/usr/bin/supervisord"]
#ENTRYPOINT ["/opt/zbox/zbox","start"]

