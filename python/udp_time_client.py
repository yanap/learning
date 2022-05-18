import socket
from datetime import datetime
from time import sleep

from grpc import server

address = ('localhost', 6789)
max_size = 4096

print('Starting the client at', datetime.now())
client = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
while True:
	sleep(5)
	client.sendto(b'time', address)
	data, server_addr = client.recvfrom(max_size)
	print('Client read', data)
	client.close()
