import time


def timer(func):
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        close = time.time()
        func_time = close - start
        print(f"函数运行时间：{func_time:.2f}秒")
        return result
    return wrapper


@timer
def test():
    time.sleep(1)


@timer
def test2(a, b):
    print('--------')
    print(a)
    print(b)
    print('--------')
    time.sleep(2)


if __name__ == "__main__":
    test()
    test2(1, 2)
