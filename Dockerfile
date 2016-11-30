FROM ubuntu:trusty

ADD   http://dl.cnezsoft.com/zentao/8.3.1/ZenTaoPMS.8.3.1.zbox_64.tar.gz  /tmp

COPY  ./boot.sh   /usr/local/boot.sh
RUN   chmod +x    /usr/local/boot.sh

ENTRYPOINT  ["/usr/local/boot.sh"]
