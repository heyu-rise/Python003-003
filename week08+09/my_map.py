def my_map(func, *seqs):
    for args in zip(*seqs):
        yield func(*args)


def concat(x, y):
    return x * y


if __name__ == "__main__":
    a = [1, 2, 5]
    b = [3, 4, 9]
    result = my_map(concat, a, b)
    print(list(result))
