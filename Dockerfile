FROM ubuntu:trusty

ADD   https://ncu.dl.sourceforge.net/project/zentao/9.2.1/ZenTaoPMS.9.2.1.zbox_64.tar.gz  /tmp

COPY  ./boot.sh   /usr/local/boot.sh
RUN   chmod +x    /usr/local/boot.sh

ENTRYPOINT  ["/usr/local/boot.sh"]
