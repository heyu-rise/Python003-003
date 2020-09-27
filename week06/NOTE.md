[TOC]

# Djjango Web

## 1、创建项目

> 创建项目

```powershell
django-admin startproject MyDjango
```

> 创建应用程序

```shell
python manage.py startapp douban
```

> 运行程序

```shell
python manage.py runserver 0.0.0.0:80
```

## 2、数据库连接

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'douban',
        'USER': 'root',
        'PASSWORD': '123456',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}
```

> 导入

```shell
python manage.py migrate
```

> 导出

```shell
python manage.py inspectdb > douban/models.py
```

