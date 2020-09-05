[TOC]

# 多线程和多进程

## Scrapy并发参数优化原理

- **CONCURRENT_REQUESTS** 

  并发数量

- **DOWNLOAD_DELAY** 

  相同网站的下载延时

- **CONCURRENT_REQUESTS_PER_DOMAIN**

  每个域名的并发数

- **CONCURRENT_REQUESTS_PER_IP**

  每个IP的并发数

## 多进程

### 创建线程

```python
import time
from multiprocessing import Process

def f(name):
    print(f'hello {name}')

p = Process(target=f, args=('john',))
# start 方法创建进程
p.start()
# join 方法阻塞主进程
p.join()

# -----------------------------------

class NewProcess(Process): #继承Process类创建一个新类
    def __init__(self,num):
        self.num = num
        super().__init__()

    def run(self):  #重写Process类中的run方法.
        while True:
            print(f'我是进程 {self.num} , 我的pid是: {os.getpid()}')
            time.sleep(1)

for i in range(2):
    p = NewProcess(i)
    p.start()
```

### 进程调试

```python
p = Process(target=f, args=('bob',))
p.start()
# 获取进程id
p,pid  
```

### 进程间通信

- 使用队列queue
- 使用管道pipe
- 使用共享内存

### 进程锁

> 为了解决不同进程抢共享资源的问题，我们可以用加进程锁来解决

```python
lock = multiprocessing.Lock() 新建锁
l.acquire() # 锁住
l.release() # 释放
```

### 进程池

> 如果要启动大量的子进程，可以用进程池的方式批量创建子进程

```python
from multiprocessing.pool import Pool

def run(name):
    print("%s子进程开始，进程ID：%d" % (name, os.getpid()))
    start = time()
    sleep(random.choice([1, 2, 3, 4]))
    end = time()
    print("%s子进程结束，进程ID：%d。耗时%0.2f" % (name, os.getpid(), end-start))
    
if __name__ == "__main__":
    print("父进程开始")
    # 创建多个进程，表示可以同时执行的进程数量。默认大小是CPU的核心数
    p = Pool(4)
    for i in range(10):
        # 创建进程，放入进程池统一管理
        p.apply_async(run, args=(i,))
    # 如果我们用的是进程池，在调用join()之前必须要先close()，
    # 并且在close()之后不能再继续往进程池添加新的进程
    p.close()
    # 进程池对象调用join，会等待进程池中所有的子进程结束完毕再去结束父进程
    p.join()
    print("父进程结束。")
    p.terminate()
```



```python
from multiprocessing import Pool
import time

def f(x):
    return x*x

if __name__ == '__main__':
    with Pool(processes=4) as pool:         # 进程池包含4个进程

        print(pool.map(f, range(10)))       # 输出 "[0, 1, 4,..., 81]"
                    
        it = pool.imap(f, range(10))        # map输出列表，imap输出迭代器
        print(it)               
        print(next(it))                     #  "0"
        print(next(it))                     #  "1"
        print(it.next(timeout=1))           #  "4" 
```

## 多线程

#### 创建线程

```python
import threading

def run(n):
    print("current task：", n)

if __name__ == "__main__":
    t1 = threading.Thread(target=run, args=("thread 1",))
    t1.start()
    
# ----------------------------------------

class MyThread(threading.Thread):
    def __init__(self, n):
        super().__init__() # 重构run函数必须要写
        self.n = n

    def run(self):
        print("current task：", self.n)

if __name__ == "__main__":
    t1 = MyThread("thread 1")
    t1.start() # 线程开启
    t1.join()  # 阻塞主线程
```

