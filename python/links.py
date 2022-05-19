import sys

import requests
from bs4 import BeautifulSoup as soup

def get_links(url):
	result = requests.get(url)
	page = result.text
	doc = soup(page)
	links = [element.get("href") for element in doc.find_all("a")]
	return links

if __name__ == "__main__":
	for url in sys.argv[1:]:
		print("Links in", url)
		for num, link in enumerate(get_links(url), start=1):
			print(num, link)
		print()
