import redis
conn = redis.Redis()

topics = ['maine coon', 'persian']
sub = conn.pubsub()
sub.subscribe(topics)
for msg in sub.listen():
	if msg['type'] == 'messsage':
		cat = msg['channel']
		hat = msg['data']
		print(f'Subscribe: {cat} wears a {hat}')
