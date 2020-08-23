# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pandas


class MaoyanPipeline:
    def process_item(self, item, spider):
        name = item['name']
        type = item['type']
        date = item['date']
        file_data_item = (name, type, date)
        # 写入csv
        films = pandas.DataFrame(data=[file_data_item])
        films.to_csv('./films.csv', mode='a+', encoding='utf-8', index=False, header=False)
        return item
