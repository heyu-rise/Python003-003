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

> 可以使用形如 `kwarg=value` 的 [关键字参数](https://docs.python.org/zh-cn/3.7/glossary.html#term-keyword-argument) 来调用函数。例如下面的函数:

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

> 当存在一个形式为 `**name` 的最后一个形参时，它会接收一个 [字典](https://docs.python.org/zh-cn/3.7/library/stdtypes.html#typesmapping)，其中包含除了与已有形参相对应的关键字参数以外的所有关键字参数。 当存在一个形式为 `*name`，接收一个包含除了已有形参列表以外的位置参数的 [元组](https://docs.python.org/zh-cn/3.7/tutorial/datastructures.html#tut-tuples) 的形参。 组合使用 `*name` 必须出现在 `**name` 之前。例如，如果我们这样定义一个函数:

```python
def cheeseshop(kind, *arguments, **keywords):
    print("-- Do you have any", kind, "?")
    print("-- I'm sorry, we're all out of", kind)
    for arg in arguments:
        print(arg)
    print("-" * 40)
    for kw in keywords:
        print(kw, ":", keywords[kw])
```

> 它可以像这样调用:

```python
cheeseshop("Limburger", "It's very runny, sir.",
           "It's really very, VERY runny, sir.",
           shopkeeper="Michael Palin",
           client="John Cleese",
           sketch="Cheese Shop Sketch")
```

> 当然它会打印:

```
-- Do you have any Limburger ?
-- I'm sorry, we're all out of Limburger
It's very runny, sir.
It's really very, VERY runny, sir.
----------------------------------------
shopkeeper : Michael Palin
client : John Cleese
sketch : Cheese Shop Sketch
```

> 注意打印时关键字参数的顺序保证与调用函数时提供它们的顺序是相匹配的。

**总结**

- 在函数调用中，关键字参数必须跟随在位置参数的后面
- 传递的所有关键字参数必须与函数接受的其中一个参数匹配
- 不能对同一个参数多次赋值
- 当存在一个形式为 `**name` 的最后一个形参时，它会接收一个 [字典](https://docs.python.org/zh-cn/3.7/library/stdtypes.html#typesmapping)，其中包含除了与已有形参相对应的关键字参数以外的所有关键字参数
- 当存在一个形式为 `*name`，接收一个包含除了已有形参列表以外的位置参数的 [元组](https://docs.python.org/zh-cn/3.7/tutorial/datastructures.html#tut-tuples) 的形参
- 组合使用 `*name` 必须出现在 `**name` 之前。

##### 4.7.3. 任意的参数列表

> 参数会被包含在一个[元组](https://docs.python.org/zh-cn/3.7/tutorial/datastructures.html#tut-tuples)里。在可变数量的参数之前，可能会出现零个或多个普通参数。:

```python
def write_multiple_items(file, separator, *args):
    file.write(separator.join(args))
```

> 一般来说，这些 `可变参数` 将在形式参数列表的末尾，因为它们收集传递给函数的所有剩余输入参数。出现在 `*args` 参数之后的任何形式参数都是 ‘仅关键字参数’，也就是说它们只能作为关键字参数而不能是位置参数。:

```python
def concat(*args, sep="/"):
    return sep.join(args)
concat("earth", "mars", "venus")
concat("earth", "mars", "venus", sep=".")

'earth/mars/venus'
'earth.mars.venus'
```

##### 4.7.4. 解包参数列表

> 当参数已经在列表或元组中但需要为需要单独位置参数的函数调用解包时，会发生相反的情况。例如，内置的 [`range()`](https://docs.python.org/zh-cn/3.7/library/stdtypes.html#range) 函数需要单独的 *start* 和 *stop* 参数。如果它们不能单独使用，请使用 `*` 运算符编写函数调用以从列表或元组中解包参数:

```python
>>> list(range(3, 6))            # normal call with separate arguments
[3, 4, 5]
>>> args = [3, 6]
>>> list(range(*args))            # call with arguments unpacked from a list
[3, 4, 5]
```

> 以同样的方式，字典可以使用 `**` 运算符来提供关键字参数:

```python
>>> def parrot(voltage, state='a stiff', action='voom'):
...     print("-- This parrot wouldn't", action, end=' ')
...     print("if you put", voltage, "volts through it.", end=' ')
...     print("E's", state, "!")
...
>>> d = {"voltage": "four million", "state": "bleedin' demised", "action": "VOOM"}
>>> parrot(**d)
-- This parrot wouldn't VOOM if you put four million volts through it. E's bleedin' demised !
```

##### 4.7.5. Lambda 表达式

> 可以用 [`lambda`](https://docs.python.org/zh-cn/3.7/reference/expressions.html#lambda) 关键字来创建一个小的匿名函数。这个函数返回两个参数的和： `lambda a, b: a+b` 。Lambda函数可以在需要函数对象的任何地方使用。它们在语法上限于单个表达式。从语义上来说，它们只是正常函数定义的语法糖。与嵌套函数定义一样，lambda函数可以引用所包含域的变量:

```python
>>> def make_incrementor(n):
...     return lambda x: x + n
...
>>> f = make_incrementor(42)
>>> f(0)
42
>>> f(1)
43
```

> 上面的例子使用一个lambda表达式来返回一个函数。另一个用法是传递一个小函数作为参数:

```python
>>> pairs = [(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four')]
>>> pairs.sort(key=lambda pair: pair[1])
>>> pairs
[(4, 'four'), (1, 'one'), (3, 'three'), (2, 'two')]
```



## HTML（超文本标记语言）的基础

- HTML 标准语法：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML](https://developer.mozilla.org/zh-CN/docs/Web/HTML)
- HTML 元素参考：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element)
- HTML 属性参考：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Attributes](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Attributes)
- HTML 全局属性：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Global_attributes](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Global_attributes)
- HTML 链接类型：[ https://developer.mozilla.org/zh-CN/docs/Web/HTML/Link_types](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Link_types)