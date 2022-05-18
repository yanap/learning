from requests import request
import zmq

host = '127.0.0.1'
port = 6789
context = zmq.Context()
server = context.socket(zmq.REP)
server.bind(f"tcp://{host}:{port}")
while True:
	# クライアントからのリクエストを待つ
	request_bytes = server.recv()
	request_str = request_bytes.decode('utf-8')
	print(f"That voice in my head says: {request_str}")
	reply_str =f"Stop saying: {request_str}"
	reply_bytes = bytes(reply_str, 'utf-8')
	server.send(reply_bytes)
