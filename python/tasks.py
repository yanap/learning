import time

from invoke import task

@task
def mytime(ctx):
	now = time.time()
	time_str = time.asctime(time.localtime(now))
	print("Local time is", time_str)
