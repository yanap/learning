def dump(func):
	"""入力引数と出力値を表示する"""
	def wrapped(*args, **kwargs):
		print("Function name:", func.__name__)
		print("Input arguments:", ' '.join(map(str, args)))
		print("Input keyword arguments", kwargs.items())
		output = func(*args, **kwargs)
		print("Output:", output)
		return output
	return wrapped
