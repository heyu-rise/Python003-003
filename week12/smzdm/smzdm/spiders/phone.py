# -*- coding: utf-8 -*-
import scrapy


class PhoneSpider(scrapy.Spider):
    name = 'phone'
    allowed_domains = ['smzdm.com']
    start_urls = ['http://smzdm.com/']

    def parse(self, response):
        pass
