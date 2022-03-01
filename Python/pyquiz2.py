#Christopher Chen

input_news = open('news.ycombinator.com.rss.xml', 'r')

for news in input_news:
    print(news.replace('<item>', '<item>\n').replace('</item>', '\n</item>\n'))
