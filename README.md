zentao 8.3.1

增加了检查目录的脚本，当使用-v参数持久化数据后，会先检查/opt/zbox/下是否有数据，有数据会直接启动，没有数据会启动一个全新的zentao

1. 后台运行：

   docker run -d --restart=always -p=1080:80 -v=/opt/zbox:/opt/zbox  haha123/zentao
   
2.

   Visit website： https://LOCALHOST_IP:1080 default user/passwd: admin/123456
   
3. compose 启动

   zentao:
   
    restart: always
    
    ports:
    
        -  "1080:80"
        
    volumes:
    
        -  /opt/zbox/:/opt/zbox/
        



