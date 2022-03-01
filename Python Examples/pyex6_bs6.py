
import requests
import bs4

url = requests.get("http://www.monmouth.edu/news/archives")

html = url.text

print(html)

munews_soup = bs4.BeautifulSoup(html, "html.parser")

articles = munews_soup.select('article')

titles = []

for article in articles:
 #   print(article['aria-label'])
    titles.append(article['aria-label'])

links = []

for article in articles:
    anchor = article.find('a')

    print(anchor['href'])

newsfeed = dict( [ (titles[i], links[i]) for i in range(len(titles)) ] )

print(newsfeed)