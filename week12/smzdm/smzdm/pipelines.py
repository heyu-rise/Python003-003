# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql
from smzdm.settings import DB_INFO


class SmzdmPipeline:

    def open_spider(self, spider):
        self.conn = pymysql.connect(
            host=DB_INFO['host'],
            port=DB_INFO['port'],
            user=DB_INFO['user'],
            password=DB_INFO['password'],
            db=DB_INFO['db'])
        print('open')


    def process_item(self, item, spider):
        itemId = item['id']
        name = item['name']
        desc = item['desc']
        comment = item['comment']
        comments = []
        for key in comment:
            in_id = key['id']
            comment_in = key['comment']
            date = key['create_time']
            comments.append((in_id, comment_in, date))
        sql_good_delete = f'DELETE FROM good WHERE id = {itemId}'
        sql_comment_delete = f'DELETE FROM good_comment WHERE good_id = {itemId}'
        sql_good_insert = f'INSERT INTO `good` VALUES ("{itemId}", "{name}", "{desc}")'
        cur = self.conn.cursor()
        cur.execute(sql_good_delete)
        self.conn.commit()
        cur.execute(sql_comment_delete)
        self.conn.commit()
        cur.execute(sql_good_insert)
        self.conn.commit()
        cur.executemany('INSERT INTO `good_comment` (`good_id`,`comment`,`create_time`) VALUES (%s,%s,%s)', comments)
        self.conn.commit()
        cur.close()

    def close_spider(self, spider):
        self.conn.close()
        print('close')
