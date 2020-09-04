[TOC]

# 反爬虫机制、Scrapy中间件和分布式爬虫



## 1、异常捕获与处理

### 1.1、异常捕获

> 下面的写法，每次程序执行时，except block 中只要有一个 exception 类型与实际匹配即可

```python
try:
    s = input('please enter two numbers separated by comma: ')
    num1 = int(s.split(',')[0].strip())
    num2 = int(s.split(',')[1].strip())
except (ValueError, IndexError) as err:
    print('Error: {}'.format(err))
```

```python

try:
    s = input('please enter two numbers separated by comma: ')
    num1 = int(s.split(',')[0].strip())
    num2 = int(s.split(',')[1].strip())
except ValueError as err:
    print('Value Error: {}'.format(err))
except IndexError as err:
    print('Index Error: {}'.format(err))
```

> 不过，很多时候，我们很难保证程序覆盖所有的异常类型，所以，更通常的做法，是在最后一个 except block，声明其处理的异常类型是 Exception。Exception 是其他所有非系统异常的基类，能够匹配任意非系统异常

```python

try:
    s = input('please enter two numbers separated by comma: ')
    num1 = int(s.split(',')[0].strip())
    num2 = int(s.split(',')[1].strip())
    ...
except ValueError as err:
    print('Value Error: {}'.format(err))
except IndexError as err:
    print('Index Error: {}'.format(err))
except Exception as err:
    print('Other error: {}'.format(err))
```

> 或者，你也可以在 except 后面省略异常类型，这表示与任意异常相匹配（包括系统异常等）

```python

try:
    s = input('please enter two numbers separated by comma: ')
    num1 = int(s.split(',')[0].strip())
    num2 = int(s.split(',')[1].strip())
except ValueError as err:
    print('Value Error: {}'.format(err))
except IndexError as err:
    print('Index Error: {}'.format(err))
except:
    print('Other error')
```

### 1.2、自定义异常

```python

class MyInputError(Exception):
    """Exception raised when there're errors in input"""
    def __init__(self, value): # 自定义异常类型的初始化
        self.value = value
    def __str__(self): # 自定义异常类型的string表达形式
        return ("{} is invalid input".format(repr(self.value)))
    
try:
    raise MyInputError(1) # 抛出MyInputError这个异常
except MyInputError as err:
    print('error: {}'.format(err))
    
#  输出

error: 1 is invalid input
```

## 3、反爬虫：模拟浏览器的头部信息

**模式浏览器的常用方式**

- 添加**user-agent**（浏览器信息）
- 添加**Referer**（跳转信息）
- 添加**Cookie**（用户信息）
- 添加**host**信息

## 5、反爬虫：使用WebDriver模拟浏览器行为

### 5.1、使用WebDriver模拟浏览器行为

> 单request不能准确的请求到想要的数据的时候，可以通过WebDriver来模拟点击行为来获取数据

[插件下载](http://chromedriver.storage.googleapis.com/index.html)

**注意**

- 如果需要操作的对象嵌套在frame中，需要switch到frame中查找
- 插件应该放在Python Interpreter同级目录下



### 5.2、文件下载

**小文件下载**

```python
import requests

image_url = "https://www.python.org/static/community_logos/python-logo-master-v3-TM.png"
r = requests.get(image_url)
with open("python_logo.png",'wb') as f:
    f.write(r.content)
```

**大文件下载**

> 如果文件比较大的话，那么下载下来的文件先放在内存中，内存还是比较有压力的。
>
> 所以为了防止内存不够用的现象出现，我们要想办法把下载的文件分块写到磁盘中。

```python
import requests

file_url = "http://python.xxx.yyy.pdf"
r = requests.get(file_url, stream=True)
with open("python.pdf", "wb") as pdf:
    for chunk in r.iter_content(chunk_size=1024):
        if chunk:
            pdf.write(chunk)
```

## 7、爬虫中间件&系统代理IP

> 做爬虫的中间处理

## 8、自定义中间件&随机代理IP

> scrapy的settings的自定义配置需要大写

## 9、分布式爬虫

> 用redis来解决单机爬虫性能不足的问题，使用scrapy-redis来实现scrapy和redis的集成

**使用scrapy-redis之后scrapy的主要变化**

- 使用了RedisSpider类替代了spider类
- Scheduler的queue去redis实现
- item pipeline有redis实现



