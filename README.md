## cmdb
> 项目包含cmdb常见功能的抽象及封装、示例

## 技术栈
- `Python 3.7`
- `Django 3.1.3`
- `Django Rest Framework 3.12.2`

## 贡献代码

1、本地安装好`Redis`和`Mysql`
```
   yum install redis mysql -y
```
2、安装隔离的虚拟环境
```
  virtualenv .venv
  source .venv/bin/activate
  make install
```
3、创建数据库和表
```
  mysql -u<username> -p -e "create database beidou DEFAULT CHARACTER SET utf8"
  python manage.py makemigrations
  python manage.py migrate
```
4、启动服务
```
  python manager.py runserver 0.0.0.0:8000
  python manage.py celeryd -l info
  python manage.py celery beat
```
5、提交代码
```
  fork一份代码至自己的仓库   
  从远程origin仓库git clone一份至本地   
  git remote add <your-repository-name> <your-address>   
  git checkout -b develop   
  每次要提交代码时, 请git pull || git fetch origin master && git rebase origin/master   
  没有冲突或解决好冲突后, 提交代码至远程自己的分支，确认无误后从自己仓库合并到lightmerge分支   
  lightmerge在dev环境测试验收通过后，提合master的MR   
```

## todo-list
- [ ] 日志采集
- [ ] 监控告警
- [ ] 消息触达
- [ ] 接口定制化
- [ ] model定制化
