[TOC]

# request爬虫&scrapy爬虫

## python基本语法

### 1、帮助

#### 1.1、dir()

> dir(math)会返回math库的具体方法集合

```python
>>> import math
>>> dir(math)
['__doc__', '__loader__', '__name__', '__package__', '__spec__', 'acos', 'acosh', 'asin', 'asinh', 'atan', 'atan2', 'atanh', 'ceil', 'copysign', 'cos', 'cosh', 'degrees', 'e', 'erf', 'erfc', 'exp', 'expm1', 'fabs', 'factorial', 'floor', 'fmod', 'frexp', 'fsum', 'gamma', 'gcd', 'hypot', 'inf', 'isclose', 'isfinite', 'isinf', 'isnan', 'ldexp', 'lgamma', 'log', 'log10', 'log1p', 'log2', 'modf', 'nan', 'pi', 'pow', 'radians', 'remainder', 'sin', 'sinh', 'sqrt', 'tan', 'tanh', 'tau', 'trunc']
```

#### 1.2、help()

> help(math)会返回math库中方法的具体使用方式

```python
>>> help(math)
Help on built-in module math:

NAME
    math

DESCRIPTION
    This module provides access to the mathematical functions
    defined by the C standard.

FUNCTIONS
    acos(x, /)
        Return the arc cosine (measured in radians) of x.

    acosh(x, /)
        Return the inverse hyperbolic cosine of x.

    asin(x, /)
        Return the arc sine (measured in radians) of x.

    asinh(x, /)
        Return the inverse hyperbolic sine of x.

    atan(x, /)
        Return the arc tangent (measured in radians) of x.

    atan2(y, x, /)
        Return the arc tangent (measured in radians) of y/x.

        Unlike atan(y/x), the signs of both x and y are considered.

    atanh(x, /)
        Return the inverse hyperbolic tangent of x.
```

#### 1.3、关键字

> 在python中，不能使用关键字来作为变量名

### 2、数据结构

#### 2.1. 列表、元组

- 列表和元组，都是**一个可以放置任意数据类型的有序集合**

- **列表是动态的**，长度大小不固定，可以随意地增加、删减或者改变元素（**mutable**）

- **而元组是静态的**，长度大小固定，无法增加删减或者改变（**immutable**）

- **列表和元组都支持负数索引**，-1 表示最后一个元素，-2 表示倒数第二个元素

- 两者也可以通过 list() 和 tuple() 函数相互转换

  ```python
  list((1, 2, 3))
  [1, 2, 3]
  tuple([1, 2, 3])
  (1, 2, 3)
  ```

#### 2.2. 集合、字典

- 字典是一系列由键（key）和值（value）配对组成的元素的集合
- 在 Python3.7+，字典被确定为有序
- 集合是由不重复元素组成的无序的集
- 集合和字典基本相同，唯一的区别，就是集合没有键和值的配对，是一系列无序的、唯一的元素组合
- 集合并不支持索引操作，因为集合本质上是一个哈希表，和列表不一样
- 想要判断一个元素在不在字典或集合内，我们可以用 value in dict/set 来判断

### 3、流程控制

> 当在字典中循环时，用 `items()` 方法可将关键字和对应的值同时取出

```python
knights = {'gallahad': 'the pure', 'robin': 'the brave'}
for k, v in knights.items():
    print(k, v)
    
gallahad the pure
robin the brave
```

> 当在序列中循环时，用 [`enumerate()`](https://docs.python.org/zh-cn/3.7/library/functions.html#enumerate) 函数可以将索引位置和其对应的值同时取出

```python
for i, v in enumerate(['tic', 'tac', 'toe']):
    print(i, v)
    
0 tic
1 tac
2 toe
```

> 当同时在两个或更多序列中循环时，可以用 [`zip()`](https://docs.python.org/zh-cn/3.7/library/functions.html#zip) 函数将其内元素一一匹配。

```python
questions = ['name', 'quest', 'favorite color']
answers = ['lancelot', 'the holy grail', 'blue']
for q, a in zip(questions, answers):
    print('What is your {0}?  It is {1}.'.format(q, a))
    
What is your name?  It is lancelot.
What is your quest?  It is the holy grail.
What is your favorite color?  It is blue.
```

> 如果要逆向循环一个序列，可以先正向定位序列，然后调用 [`reversed()`](https://docs.python.org/zh-cn/3.7/library/functions.html#reversed) 函数

```python
for i in reversed(range(1, 10, 2)):
    print(i)
    
9
7
5
3
1
```

> 如果要按某个指定顺序循环一个序列，可以用 [`sorted()`](https://docs.python.org/zh-cn/3.7/library/functions.html#sorted) 函数，它可以在不改动原序列的基础上返回一个新的排好序的序列

```python
basket = ['apple', 'orange', 'apple', 'pear', 'orange', 'banana']
for f in sorted(set(basket)):
    print(f)
    
apple
banana
orange
pear
```

## Scrapy框架结构解析

### Scrapy核心组件

**Engine 引擎**

> 爬虫的大脑，指挥其他组件工作

**调度器**

> 接受引擎发过来的请求，按照先后顺序，压入队列中，同时去除重复的请求

**下载器**

> 下载器用户下载网页内容，并返回给爬虫

**爬虫**

> 从特定的网页中提取需要的信息，即所谓的实体，用户也可以从中提取出链接，让Scrapy继续爬取下一个页面

**项目管道**

> 抽取从网页中爬取的数据，进行数据处理与存储

### 创建爬虫项目

- 安装scrapy

```shell
pip install scrapy
```

- 创建项目

```shell
scrapy startproject {projectname}
```

> **projectname** 为项目名

- 创建爬虫

> 进入到 projectname/projectname目录下 

```
scrapy genspider {spidersname}  {domain.com}
```

> **spidername** 为爬虫名称，**domain** 为域名

- 启动爬虫

```shell
scrapy crawl {spidersname}
```

### XPath

**[详解](https://www.w3school.com.cn/xpath/index.asp)**

**XPath 是一门在 XML 文档中查找信息的语言。XPath 用于在 XML 文档中通过元素和属性进行导航。**

#### XPath 节点

> 在 XPath 中，有七种类型的节点：元素、属性、文本、命名空间、处理指令、注释以及文档节点（或称为根节点）

#### XPath 语法

**[详解](https://www.w3school.com.cn/xpath/xpath_syntax.asp)**

**xml示例**

```xml
<?xml version="1.0" encoding="utf-8"?>

<bookstore> 
  <book> 
    <title lang="eng">Harry Potter</title>  
    <price>29.99</price> 
  </book>  
  <book> 
    <title lang="eng">Learning XML</title>  
    <price>39.95</price> 
  </book> 
</bookstore>
```

**路径表达式**

| **表达式** | **描述**                                                   |
| ---------- | ---------------------------------------------------------- |
| nodename   | 选取此节点的所有子节点。                                   |
| /          | 从根节点选取。                                             |
| //         | 从匹配选择的当前节点选择文档中的节点，而不考虑它们的位置。 |
| .          | 选取当前节点。                                             |
| ..         | 选取当前节点的父节点。                                     |
| @          | 选取属性。                                                 |

**实例**

| **路径表达式**  | **结果**                                                     |
| --------------- | ------------------------------------------------------------ |
| nodename        | 选取 bookstore 元素的所有子节点。                            |
| /bookstore      | 选取根元素 bookstore。<br>注释：假如路径起始于正斜杠( / )，则此路径始终代表到某元素的绝对路径！从匹配选择的当前节点选择文档中的节点，而不考虑它们的位置。 |
| bookstore/book  | 选取属于 bookstore 的子元素的所有 book 元素。                |
| bookstore//book | 选择属于 bookstore 元素的后代的所有 book 元素，而不管它们位于 bookstore 之下的什么位置。 |
| ..              | 选取当前节点的父节点。                                       |
| //@lang         | 选取名为 lang 的所有属性。                                   |