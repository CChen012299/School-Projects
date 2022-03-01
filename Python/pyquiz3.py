#Christopher Chen

import re

input_news = open('news.ycombinator.com.rss.xml', 'r')


for line in input_news:
    titles = re.findall(r'<title[^>]*>([^<]+)</title>', line)
    print("\n".join(titles[1:])) 
    urls = re.findall(r'href=[\'"]?([^\'" >]+)', line)
    print("\n".join(urls[1:]))
