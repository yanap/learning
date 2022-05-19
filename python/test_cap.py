import unittest

import cap

class TestCap(unittest.TestCase):

	def setUp(self):
		pass

	def tearDown(self):
		pass

	def test_one_word(self):
		text = 'duck'
		result = cap.just_do_it(text)
		self.assertEqual(result, 'Duck')

	def test_multiple_words(self):
		text = 'a veritable flock of ducks'
		result = cap.just_do_it(text)
		self.assertEqual(result, 'A Veritable Flock Of Ducks')

	def test_words_with_apostrophes(self):
		text = "I'm fresh out of ideas"
		result = cap.just_do_it(text)
		self.assertEqual(result, "I'm Fresh Out Of Ideas")

if __name__ == '__main__':
	unittest.main()
