# -*- coding: utf-8 -*-
import re

import scrapy
from scrapy.selector import Selector
from smzdm.items import GoodItem

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
        item_good = GoodItem()
        item_good['id'] = meta_data['id']
        yield item_good

    def parse_comment(self, response):
        pass


def get_id_by_url(url):
    nums = re.findall(id_pattern, a)
    if len(nums) == 0:
        return None
    return nums[0]


if __name__ == '__main__':
    a = 'https://www.smzdm.com/p/26806997/'
    x = get_id_by_url(a)
    print(x)
