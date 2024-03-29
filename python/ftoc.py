def ftoc(f_temp):
	"""華氏の温度<f_temp>を摂氏に変換して返す"""
	f_boil_temp = 212.0
	f_freeze_temp = 32.0
	c_boil_temp = 100.0
	c_freeze_temp = 0.0
	f_range = f_boil_temp - f_freeze_temp
	c_range = c_boil_temp - c_freeze_temp
	f_c_ratio = c_range / f_range
	c_temp = (f_temp - f_freeze_temp) * f_c_ratio + c_freeze_temp
	return c_temp

if __name__ == '__main__':
	for f_temp in [-40.0, 0.0, 32.0, 100.0, 212.0]:
		c_temp = ftoc(f_temp)
		print(f'{f_temp} F => {c_temp} C')
		