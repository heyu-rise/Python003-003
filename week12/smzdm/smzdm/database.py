import pymysql


def run(sql):
    db_info = {
        'host': '47.93.30.98',
        'port': 3306,
        'user': 'root',
        'password': 'mn814561293',
        'db': 'smzdm'
    }
    result = None
    conn = pymysql.connect(
        host=db_info['host'],
        port=db_info['port'],
        user=db_info['user'],
        password=db_info['mn814561293'],
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
