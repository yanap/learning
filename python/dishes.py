import multiprocessing as mp

def washer(dishes, output):
	for dish in dishes:
		print('Washing', dish, 'dish')
		output.put(dish)

def dryer(input_):
	while True:
		dish = input_.get()
		print('Drying', dish, 'dish')
		input_.task_done()

dish_queue = mp.JoinableQueue()
dryer_proc = mp.Process(target=dryer, args=(dish_queue,))
dryer_proc.daemon = True
dryer_proc.start()
dishes = ['salad', 'bread', 'entree', 'dessert']
washer(dishes, dish_queue)
dish_queue.join()
