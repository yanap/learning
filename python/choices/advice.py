from random import choice

answers = ["Yes!", "No!", "Reply hazy", "Sorry, what?"]

def give():
	""" ランダムなアドバイスを返す """
	return choice(answers)
