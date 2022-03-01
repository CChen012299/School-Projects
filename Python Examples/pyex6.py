
import re
import requests

url = 'http://www.monmouth.edu/news/archives'

html = requests.get(url)

html_src = html.text


title_pattern = re.compile('<a href=article-header">(.+?)</div>')

titles = tittles_pattern.findall(html_src)

for title_num in range(len(titles)):
    new_title = re.sub(r'\\r|\\n|\\t|&#[0-9]+;', '', titles[title_num])
    titles[title_num] = new_title

links_pattern = re.compile(r"<a href=\\'(.+?)\\' title=")

links = links_pattern.findall(html_src)

newsfeed = {}

for title_num in range(len(titles)):
   newsfeed[titles[title_num]] = links[title_num]

print(newsfeed)