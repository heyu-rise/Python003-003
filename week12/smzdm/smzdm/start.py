from scrapy import cmdline


def run_scrapy():
    cmdline.execute('./scrapy crawl phone'.split())


if __name__ == '__main__':
    run_scrapy()
