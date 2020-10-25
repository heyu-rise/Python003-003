def my_map(func, *args):
    for item in args:
        yield func(item)


def concat(x):
    return x + x


if __name__ == "__main__":
    result = my_map(concat, '1', '2')
    print(list(result))
