import pymysql

def run(sql):

    dbInfo = {
    'host': '127.0.0.1',
    'port': 3306,
    'user': 'root',
    'password': '123456',
    'db': 'demo'
    }

    result = None
    conn = pymysql.connect(
        host=dbInfo['host'],
        port=dbInfo['port'],
        user=dbInfo['user'],
        password=dbInfo['password'],
        db=dbInfo['db'],
    )
    # 游标建立的时候就开启了一个隐形的事物
    cur = conn.cursor()
    try:
        cur.execute(sql)
        result = cur.fetchone()
        # 关闭游标
        cur.close()
        conn.commit()
    except Exception as e:
        print(e)
        conn.rollback()
        # 关闭数据库连接
    finally:
        conn.close()
        return result
