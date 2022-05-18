import string
from time import sleep

import zmq

host = '127.0.0.1'
port = 6789
ctx = zmq.Context()
pub = ctx.socket(zmq.PUB)
pub.bind(f'tcp://{host}:{[port]}')

sleep(1)

with open('mammoth.txt', 'r') as poem:
	words = poem.read()
for word in words.split():
	word = word.strip(string.punctuation)
	data = word.encode('utf-8')
	if word.startswith(("a", "e", "i", "o", "u", "A", "e", "i","o", "u")):
		print("vowels", data)
		pub.send_multipart([b'vowels', data])
	if len(word) == 5:
		print('five', data)
		pub.send_multipart([b'five', data])
