
> zentao 9.2.1
----

增加了检查目录的脚本，当使用-v参数持久化数据后，会先检查/opt/zbox/下是否有数据，有数据会直接启动，没有数据会启动一个全新的zentao

## 访问zentao：


1. 后台运行：
   docker run -d --restart=always -p=1080:80 -v=/opt/zbox:/opt/zbox  haha123/zentao

2. 访问：

   Visit website： https://LOCALHOST_IP:1080 default 

    user/passwd: admin/123456

3. compose 启动
   ```yaml
   zentao:
       restart: always
       ports:
         -  "1080:80"
       volumes:
         -  /opt/zbox/:/opt/zbox/     
   ```

## 访问zentao数据库

添加数据库用户

```bash
~# docker ps  |  grep zentao
37164ece774b        haha123/zentao                                                         "/usr/local/boot.sh"     33 seconds ago      Up 40 seconds       0.0.0.0:1080->80/tcp     upbeat_proskuriakova
~# docker exec -it 37164ece774b  bash
root@37164ece774b:/# cd /opt/zbox/
README    app/      auth/     bin/      data/     etc/      logs/     run/      tmp/      zbox      zbox.php
root@37164ece774b:/# cd /opt/zbox/auth/
root@37164ece774b:/opt/zbox/auth# ./adduser.sh
This tool is used to add user to access adminer
Account: root
Password: Adding password for user root
root@37164ece774b:/opt/zbox/auth#
```

通过网页admier直接管理数据库

访问：http://localhost:1080/adminer

输入用户名密码