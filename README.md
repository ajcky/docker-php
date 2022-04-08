## docker-compose PHP环境示例


项目分为 `nginx`, `php`  `mysql` `redis` 四个模块


目录结构如下

    docker-php
        |-- conf
            |-- nginx.conf      // nginx配置文件
        |-- html
            |-- index.php     // index首页
        |-- mysql
            |-- conf  //mysql配置文件
            |-- data  //mysql data目录
        |-- php
            ......
        |-- redis  
             ......
        |-- docker-compose.yml  // docker-compose 主配置文件


使用方式
``` sh 

# 1. 克隆代码
git clone https://github.com/ajcky/docker-php

# 2. 进入目录下, 启动项目(以后台方式)
cd docker-php
docker-compose up -d

```    

然后就启动完成了, 如下图
```
Creating docker-php_nginx_1 ... done
Creating docker-php_php_1   ... done
Creating docker-php_mysql_1 ... done
Creating redis1.0           ... done
```

## 修改本地hosts
``` sh

# 1. Mac
sudo vi /etc/hosts
127.0.0.1 ***.com

```



