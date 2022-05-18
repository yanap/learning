import socket
from datetime import datetime

address = ('localhost', 6789)
max_size = 4096

print('Starting thje server at', datetime.now())
print('Waiting for a client to call.')
server = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
server.bind(address)
while True:
	date, client_addr = server.recvfrom(max_size)
	if data == b'time':
		now = str(datetime.utcnow())
		data = now.encode('utf-8')
		server.sendto(data, client_addr)
		print('Server sent', data)
	server.close()
