# -*- coding: utf-8 -*-
import scrapy
from scrapy.selector import Selector
from proxymysql.items import ProxymysqlItem


class SpiderSpider(scrapy.Spider):
    name = 'spider'
    allowed_domains = ['maoyan.com']
    start_urls = ['https://maoyan.com/films?showType=3']

    def parse(self, response):
        host = 'https://maoyan.com'
        detail_urls = []
        try:
            detail_urls = Selector(response=response).xpath('//div[@class="movie-item film-channel"]/a/@href').extract()
        except Exception as e:
            print(e)
        # print(response.text)
        num = 10
        for i in range(0, num):
            url_item = host + detail_urls[i]
            yield scrapy.Request(url=url_item, callback=self.parse2, priority=num - i)

    def parse2(self, response):
        item = ProxymysqlItem()
        try:
            head_info = Selector(response=response).xpath('//div[@class="movie-brief-container"]')
            name = head_info.xpath('./h1/text()').extract_first()
            types = head_info.xpath('./ul/li[1]/a/text()').extract()
            date = head_info.xpath('./ul/li[3]/text()').extract_first()
            type = ''.join(types).strip().replace('  ', ',')
            item['name'] = name
            item['type'] = type
            item['date'] = date
        except Exception as e:
            print(e)
        finally:
            yield item
