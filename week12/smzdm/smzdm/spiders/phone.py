# -*- coding: utf-8 -*-
import re
import time
import datetime

import scrapy
from scrapy.selector import Selector

# from smzdm.items import GoodItem

id_pattern = '\\d{7,15}'


class PhoneSpider(scrapy.Spider):
    name = 'phone'
    allowed_domains = ['smzdm.com']
    start_urls = ['https://www.smzdm.com/fenlei/xifahufa/h5c4s0f0t0p1/#feed-main/']

    def parse(self, response):
        detail_urls = Selector(response=response).xpath('//ul[@id="feed-main-list"]//div/div['
                                                        '@class="z-feed-img"]/a/@href').extract()
        print(detail_urls)
        num = 10
        if len(detail_urls) > 10:
            detail_urls = detail_urls[:10]
        for good_url in detail_urls:
            id = get_id_by_url(response.url)
            if id is None:
                continue
            meta_data = {'id': id}
            yield scrapy.Request(url=good_url, meta=meta_data, callback=self.parse_detail)

    def parse_detail(self, response):
        meta_data = response.meta['id']
        content = Selector(response=response).xpath('//div[@id="feed-main"]')
        name = content.xpath('//h1[@class="title J_title"]/text()').extract_first()
        desc = content.xpath('//div[@class="describe"]/text()').extract_first()
        # item_good = GoodItem()
        # item_good['id'] = meta_data['id']
        # item_good['name'] = name
        # item_good['desc'] = desc
        # yield item_good

    def parse_comment(self, response):
        content = Selector(response=response).xpath('//section[@id="comments"]//div[@id="commentTabBlockNew"]//li['
                                                    '@class="comment_list"]').extract()
        comment = content.xpath(
            '//div[@class="comment_conBox"]/div[@class="comment_conWrap"]//span[@itemprop="description"]/text()').extract_first()
        pass


def get_id_by_url(url):
    nums = re.findall(id_pattern, url)
    if len(nums) == 0:
        return None
    return nums[0]


def test2():
    a = 1
    with open(r'C:/Users/shy19/Desktop/新建文件夹/aaa.html', 'r', encoding='utf-8') as f:
        a = f.read()
        f.close()
        if f.close() == 1:
            print('sucess')
        else:
            print('filue')
    content = Selector(text=a).xpath('//section[@id="comments"]//div[@id="commentTabBlockNew"]//li[@class="comment_list"]')
    print(len(content))
    for item in content:
        comment = item.xpath('.//div[@class="comment_conBox"]/div[@class="comment_conWrap"]//span['
                             '@itemprop="description"]/text()').extract_first()
        date = item.xpath('.//div[@class="time"]/text()').extract_first()
        print(comment)
        print(date)



if __name__ == '__main__':
    # a = 'https://www.smzdm.com/p/26806997/'
    # x = get_id_by_url(a)
    # print(x)
    test2()
    print(datetime.datetime.now())
