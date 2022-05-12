from random import choice

places = ["McDonalds", "KFC", "Burger King", "Taco Bell", "Wendys", "Arbys", "Pizza Hut"]

def pick():
	""" ランダムなファストフード店の名前を返す """
	return choice(places)
