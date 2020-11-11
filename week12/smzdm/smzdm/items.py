# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class GoodItem(scrapy.Item):
    id = scrapy.Field
    name = scrapy.Field
    desc = scrapy.Field


class CommentItem(scrapy.Item):
    id = scrapy.Field
    ccomment = scrapy.Field
    create_time = scrapy.Field