# Django开发进阶

## 作业
> 用户名：blues
> 密码：123456qwer

## 创建用户

```shell
python manage.py createsuperuser
```

### 启动celery

```shell
生产者
celery -A {projectname} beat -l info
消费者
celery -A {projectname} worker -l info
```
