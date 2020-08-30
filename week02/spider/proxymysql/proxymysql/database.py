import pymysql


def run(sql):
    db_info = {
        'host': '127.0.0.1',
        'port': 3306,
        'user': 'root',
        'password': '123456',
        'db': 'demo'
    }
    result = None
    conn = pymysql.connect(
        host=db_info['host'],
        port=db_info['port'],
        user=db_info['user'],
        password=db_info['password'],
        db=db_info['db'],
    )
    cur = conn.cursor()
    try:
        cur.execute(sql)
        result = cur.fetchone()
        cur.close()
        conn.commit()
    except Exception as e:
        print(e)
        conn.rollback()
    finally:
        try:
            conn.close()
        except Exception as e:
            print(e)
        return result
