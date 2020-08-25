# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pandas


class MaoyanPipeline:

    file_data = []

    # def open_spider(self, spider):
    #     pass

    def process_item(self, item, spider):
        name = item['name']
        film_type = item['type']
        date = item['date']
        file_data_item = (name, film_type, date)
        self.file_data.append(file_data_item)
        return item

    def close_spider(self, spider):
        # 写入csv
        films = pandas.DataFrame(data=self.file_data)
        films.to_csv('./films.csv', mode='a', encoding='utf-8', index=False, header=False)