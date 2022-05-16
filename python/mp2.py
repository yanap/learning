import multiprocessing
import os
import time

def whoami(name):
	print(f"I'm {name}, in process {os.getpid()}")

def loopy(name):
	whoami(name)
	start = 1
	stop = 1000000
	for num in range(start, stop):
		print(f"\tNumber {num} of {stop}. Honk!")

		time.sleep(1)

	if __name__ == "__main__":
		whoami("main")
		p = multiprocessing.Process(target=loopy, args=("loopy",))
		p.start()
		time.sleep(5)
		p.terminate()
