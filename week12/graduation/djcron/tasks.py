from graduation.celery import app


@app.task()
def run_scrapy():
    return 'test'
