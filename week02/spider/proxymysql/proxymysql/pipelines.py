# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import proxymysql.database as db


class ProxymysqlPipeline:
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
        sql = 'INSERT INTO film (`name`, `type`, `date`) VALUES '
        for i in range(0, len(self.file_data)):
            film_data = self.file_data[i]
            name = film_data[0]
            film_type = film_data[1]
            date = film_data[2]
            if i != 0:
                sql = sql + ','
            sql = sql + f'("{name}", "{film_type}", "{date}")'
        # 写入mysql
        db.run(sql)
