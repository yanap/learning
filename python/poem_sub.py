import string

import zmq

host = '127.0.0.1'
port = 6798
ctx = zmq.Context()
sub = ctx.socket(zmq.SUB)
sub.connect(f'tcp://{host}:{port}')
sub.setsockopt(zmq.SUBSCRIBE, b'vowels')
sub.setsockopt(zmq.SUBSCRIBE, b'five')
while True:
	topic, word = sub.recv_multipart()
	print(topic, word)
