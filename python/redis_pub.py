import random

import redis

conn = redis.Redis()
cats = ['siamese', 'perian', 'maine coon', 'norwegian forest']
hats = ['stovepipe', 'bowler', 'tam-o-shanter', 'fedora']
for msg in range(10):
	cat = random.choice(cats)
	hat = random.choice(hats)
	print(f'Publish: {cat} wears a {hat}')
	conn.publish(cat, hat)
