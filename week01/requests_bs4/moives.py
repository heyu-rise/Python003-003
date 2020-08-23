import requests
from bs4 import BeautifulSoup as bs
import pandas

url = 'https://maoyan.com/films?showType=3'
host = 'https://maoyan.com'
header = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                  'Chrome/84.0.4147.135 Safari/537.36',
    'Referer': 'https://maoyan.com/films',
    'Cookie': 'uuid_n_v=v1; uuid=EC0EAAC0E48C11EAB90FBBC3BB80078AA6976C24C5794A34836737A49737C3DD; '
              'mojo-uuid=f84586bb5778fda5b3bb833ca23d5da6; '
              '_lxsdk_cuid=17416ce47cac8-044876d500c5c9-3323766-1fa400-17416ce47cac8; '
              '_lxsdk=EC0EAAC0E48C11EAB90FBBC3BB80078AA6976C24C5794A34836737A49737C3DD; '
              '_csrf=5d085b0c75a179781989209b07109cdf4023f7356019ff17d1209e9a6146a769; '
              'Hm_lvt_703e94591e87be68cc8da0da7cbd0be2=1598110452,1598110513,1598157446; '
              'Hm_lpvt_703e94591e87be68cc8da0da7cbd0be2=1598157446; mojo-session-id={'
              '"id":"9d6d7d2a9b71a057fe79e173911d48f4","time":1598157446685}; mojo-trace-id=1; '
              '__mta=156054404.1598110451979.1598110513402.1598157446768.5; _lxsdk_s=174199b5d01-885-458-22%7C%7C2'}
response = requests.get(url=url, headers=header)
bs_info = bs(response.text, 'html.parser')
detail_urls = []
# 获取电影详情页的url
for tag in bs_info.find_all('div', attrs={'class': 'movie-item film-channel'}):
    href = tag.find('a').get('href')
    detail_urls.append(host + str(href))
# 改写Referer
header['Referer'] = url
file_data = []
# 获取数据
for i in range(0, 10):
    detail_url = detail_urls[i]
    response_item = requests.get(url=detail_url, headers=header)
    bs_info_item = bs(response_item.text, 'html.parser')
    header_tag = bs_info_item.find('div', {'class': 'movie-brief-container'})
    film_name = header_tag.find('h1').text.strip()
    film_type = header_tag.find_all('li')[0].text.strip().replace(' \n ', '\\')
    film_date = header_tag.find_all('li')[2].text.strip()
    file_data_item = (film_name, film_type, film_date)
    file_data.append(file_data_item)
# 写入csv
films = pandas.DataFrame(data=file_data)
films.to_csv('./films.csv', encoding='utf-8', index=False, header=False)
