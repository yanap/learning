import string

import zmq

host = '127.0.0.1'
port = 6789
ctx = zmq.Context()
pub = ctx.socket(zmq.PUB)
pub.bind(f'tcp://{host}:{port}')

with open('mammoth.txt', 'r') as poem:
	words = poem.read()

for word in words.split():
	word = word.strip(string.punctuation)
	data = word.encode('utf-8')
	if word.startswith(('a', 'e', 'i', 'o', 'u', 'A', 'e', 'i', 'o', 'u')):
		pub.send_multipart([b'vowels', data])
	if len(word) == 5:
		pub.send_multipart(b'five', data)
