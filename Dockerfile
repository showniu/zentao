FROM ubuntu:trusty

ADD   http://jaist.dl.sourceforge.net/project/zentao/8.3.1/ZenTaoPMS.8.3.1.zbox_64.tar.gz  /tmp

COPY  ./boot.sh   /usr/local/boot.sh
RUN   chmod +x    /usr/local/boot.sh

ENTRYPOINT  ["/usr/local/boot.sh"]
