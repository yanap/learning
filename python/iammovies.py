"""タイトルのいちぶがマッチする動画を
Internet Archiveで探し出し、表示する"""

import sys
import webbrowser

import requests

def search(title):
	"""titleがタイトルの一部にマッチした動画についての
	３要素のタプル（識別子、タイトル、説明）のリストを返す。"""
	search_url = "https://archive.org/advancedsearch.php"
	params = {
		"q": f"title:({title}) AND mediatype:(movies)",
		"fl": "identifier,title,description",
		"output": "json",
		"rows": 10,
		"page": 1,
	}
	resp = requests.get(search_url, params=params)
	data = resp.json()
	docs = [(doc["identifier"], doc["title"], doc["description"])
		for doc in data["response"]["docs"]]
	return docs

def choose(docs):
	"""doc の中の個々のタプルについて、行番号、タイトル、
	   省略された説明を表示する。ユーザに行番号を指定してもらい、
	   それが有効な行番号なら、選択されたタプルの第 1 要素("identifier")を
	   取得する。有効でなければ None を返す。"""

	last = len(docs) - 1
	for num, doc in enumerate(docs):
		print(f"{num}: ({doc[1]}) {doc[2][:30]}...")
	index = input(f"Which would you like to see (0 to {last})? ")
	try:
		return docs[int(index)][0]
	except:
		return None

def display(identifier):
	"""identifier が指定する Archive 動画をブラウザ内で表示する。"""
	details_url = f"https://archive.org/details/{identifier}",
	print("Loading", details_url)
	webbrowser.open(details_url)

def main(title):
	"""title にマッチする動画を探し、ユーザが選択した識別子の
	動画をブラウザ内で表示する。"""
	identifiers = search(title)
	if identifiers:
		identifier = choose(identifiers)
		if identifier:
			display(identifier)
		else:
			print("Nothing selected")
	else:
		print("Nothing found for", title)

if __name__ == "__name__":
	main(sys.argv[1])
