[TOC]

# Python基础语法概览3.7

## Python 基础语法

- Python 标准语法：[ https://docs.python.org/zh-cn/3.7/tutorial/index.html](https://docs.python.org/zh-cn/3.7/tutorial/index.html)
- Python 内置函数：[ https://docs.python.org/zh-cn/3.7/library/functions.html](https://docs.python.org/zh-cn/3.7/library/functions.html)
- Python 内置类型：[ https://docs.python.org/zh-cn/3.7/library/stdtypes.html](https://docs.python.org/zh-cn/3.7/library/stdtypes.html)
- Python 数据类型：[ https://docs.python.org/zh-cn/3.7/library/datatypes.html](https://docs.python.org/zh-cn/3.7/library/datatypes.html)
- Python 标准库：[ https://docs.python.org/zh-cn/3.7/library/index.html](https://docs.python.org/zh-cn/3.7/library/index.html)
- Python 计算器使用：[ https://docs.python.org/zh-cn/3.7/tutorial/introduction.html](https://docs.python.org/zh-cn/3.7/tutorial/introduction.html)
- Python 数据结构：[ https://docs.python.org/zh-cn/3.7/tutorial/datastructures.html](https://docs.python.org/zh-cn/3.7/tutorial/datastructures.html)
- Python 其他流程控制工具 :[ https://docs.python.org/zh-cn/3.7/tutorial/controlflow.html](https://docs.python.org/zh-cn/3.7/tutorial/controlflow.html)
- Python 中的类：[ https://docs.python.org/zh-cn/3.7/tutorial/classes.html](https://docs.python.org/zh-cn/3.7/tutorial/classes.html)
- Python 定义函数：[ https://docs.python.org/zh-cn/3.7/tutorial/controlflow.html#defining-functions](https://docs.python.org/zh-cn/3.7/tutorial/controlflow.html#defining-functions)

### 4.其他流程控制工具

#### 4.7.定义函数的更多形式

> 给函数定义有可变数目的参数也是可行的。这里有三种形式，可以组合使用。

##### 4.7.1. 参数默认值

> 最有用的形式是对一个或多个参数指定一个默认值。这样创建的函数，可以用比定义时允许的更少的参数调用，比如:

```python
def ask_ok(prompt, retries=4, reminder='Please try again!'):
    while True:
        ok = input(prompt)
        if ok in ('y', 'ye', 'yes'):
            return True
        if ok in ('n', 'no', 'nop', 'nope'):
            return False
        retries = retries - 1
        if retries < 0:
            raise ValueError('invalid user response')
        print(reminder)
```

> 这个函数可以通过几种方式调用:

- 只给出必需的参数：`ask_ok('Do you really want to quit?')`
- 给出一个可选的参数：`ask_ok('OK to overwrite the file?', 2)`
- 或者给出所有的参数：`ask_ok('OK to overwrite the file?', 2, 'Come on, only yes or no!')`

##### 4.7.2. 关键字参数

> 也可以使用形如 `kwarg=value` 的 [关键字参数](https://docs.python.org/zh-cn/3.7/glossary.html#term-keyword-argument) 来调用函数。例如下面的函数:

```python
def parrot(voltage, state='a stiff', action='voom', type='Norwegian Blue'):
    print("-- This parrot wouldn't", action, end=' ')
    print("if you put", voltage, "volts through it.")
    print("-- Lovely plumage, the", type)
    print("-- It's", state, "!")
```

> 接受一个必需的参数（`voltage`）和三个可选的参数（`state`, `action`，和 `type`）。这个函数可以通过下面的任何一种方式调用:

```python
parrot(1000)                                          # 1 个位置参数
parrot(voltage=1000)                                  # 1 个关键字参数
parrot(voltage=1000000, action='VOOOOOM')             # 2 个关键字参数
parrot(action='VOOOOOM', voltage=1000000)             # 2 个关键字参数
parrot('a million', 'bereft of life', 'jump')         # 3 个位置参数
parrot('a thousand', state='pushing up the daisies')  # 1 个位置参数, 1 个关键字参数
```

> 但下面的函数调用都是无效的:

```python
parrot()                     # 缺少必填参数
parrot(voltage=5.0, 'dead')  # 关键字参数后面必须接关键字参数
parrot(110, voltage=220)     # 重复给同一个参数赋值
parrot(actor='John Cleese')  # 未知关键字参数
```



## HTML（超文本标记语言）的基础

- HTML 标准语法：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML](https://developer.mozilla.org/zh-CN/docs/Web/HTML)
- HTML 元素参考：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element)
- HTML 属性参考：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Attributes](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Attributes)
- HTML 全局属性：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Global_attributes](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Global_attributes)
- HTML 链接类型：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Link_types](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Link_types)