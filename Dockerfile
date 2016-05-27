FROM  ubuntu

MAINTAINER   lijiapeng@boxfish.cn
COPY  sources.list  /etc/apt/sources.list
RUN   apt-get  update && apt-get install  -y  supervisor && mkdir -p  /var/log/supervisor  && apt-get  clean
COPY  supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD   http://dl.cnezsoft.com/zentao/8.2.1/ZenTaoPMS.8.2.1.zbox_64.tar.gz  /
RUN   tar zxvf  ZenTaoPMS.8.2.1.zbox_64.tar.gz -C /opt/

EXPOSE 80


CMD   ["/usr/bin/supervisord"]
