# 示例代码
import queue
import threading
import time


class CountDownLatch:

    def __init__(self, count):
        self.count = count
        self.condition = threading.Condition()

    def wait(self):
        try:
            self.condition.acquire()
            while self.count > 0:
                self.condition.wait()
        finally:
            self.condition.release()

    def count_down(self):
        try:
            self.condition.acquire()
            self.count -= 1
            self.condition.notifyAll()
        finally:
            self.condition.release()


class DiningPhilosophers(threading.Thread):

    def __init__(self, philosopher_number, left_fork, right_fork, operate_queue, count_latch):
        super().__init__()
        self.philosopher_number = philosopher_number
        self.left_fork = left_fork
        self.right_fork = right_fork
        self.operate_queue = operate_queue
        self.count_latch = count_latch

    def run(self):
        """
        使用非阻塞锁来定义叉子，获取锁失败不会阻塞一直获取，而是会返回False，当第一次获取成功而第二次获取失败时，释放第一次获取的锁，
        用time.sleep来表示吃饭时间。
        """
        while True:
            left = self.left_fork.acquire(blocking=False)
            if left:
                right = self.right_fork.acquire(blocking=False)
                if right:
                    self.pick_left_fork()
                    self.pick_right_fork()
                    self.eat()
                    self.put_left_fork()
                    self.put_right_fork()
                    break
                else:
                    self.left_fork.release()
            else:
                right = self.right_fork.acquire(blocking=False)
                if right:
                    left = self.left_fork.acquire(blocking=False)
                    if left:
                        self.pick_right_fork()
                        self.pick_left_fork()
                        self.eat()
                        self.put_left_fork()
                        self.put_right_fork()
                        break
                    else:
                        self.right_fork.release()
        print(str(self.philosopher_number) + ' count_down')
        self.count_latch.count_down()

    def eat(self):
        time.sleep(0.01)
        self.operate_queue.put([self.philosopher_number, 0, 3])

    def pick_left_fork(self):
        self.operate_queue.put([self.philosopher_number, 1, 1])

    def pick_right_fork(self):
        self.operate_queue.put([self.philosopher_number, 2, 1])

    def put_left_fork(self):
        self.left_fork.release()
        self.operate_queue.put([self.philosopher_number, 1, 2])

    def put_right_fork(self):
        self.right_fork.release()
        self.operate_queue.put([self.philosopher_number, 2, 2])


if __name__ == '__main__':
    operate_queue = queue.Queue()
    fork1 = threading.Lock()
    fork2 = threading.Lock()
    fork3 = threading.Lock()
    fork4 = threading.Lock()
    fork5 = threading.Lock()
    n = 10
    latch = CountDownLatch(5 * n)
    for _ in range(n):
        philosopher0 = DiningPhilosophers(0, fork5, fork1, operate_queue, latch)
        philosopher0.start()
        philosopher1 = DiningPhilosophers(1, fork1, fork2, operate_queue, latch)
        philosopher1.start()
        philosopher2 = DiningPhilosophers(2, fork2, fork3, operate_queue, latch)
        philosopher2.start()
        philosopher3 = DiningPhilosophers(3, fork3, fork4, operate_queue, latch)
        philosopher3.start()
        philosopher4 = DiningPhilosophers(4, fork4, fork5, operate_queue, latch)
        philosopher4.start()
    latch.wait()
    queue_list = []
    for i in range(5 * 5 * n):
        queue_list.append(operate_queue.get())
    print(queue_list)
