from selenium import webdriver
import time

url = 'https://shimo.im/login'

try:
    browser = webdriver.Chrome()
    browser.get(url)
    time.sleep(1)
    browser.find_element_by_xpath('//input[@name="mobileOrEmail"]').send_keys('18888888888')
    time.sleep(1)
    browser.find_element_by_xpath('//input[@name="password"]').send_keys('1234567')
    time.sleep(1)
    browser.find_element_by_xpath('//button[1]').click()
    time.sleep(1)
    cookies = browser.get_cookies()
    print(cookies)
except Exception as e:
    print(e)
