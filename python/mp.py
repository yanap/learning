import multiprocessing
import os

def whoami(what):
	whoami(f"Process {os.getgid()} says: {what}")

if __name__ == "__main__":
	whoami("I'm the main program")
	for n in range(4):
		p = multiprocessing.Process(target=whoami, args=(f"I'm function {n}"))
		p.start()
