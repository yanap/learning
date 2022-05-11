class Element:
	def __init__(self, name, symbol, number):
		self.__name = name
		self.__symbol = symbol
		self.__number = number
	@property
	def name(self):
		return self.__name
	@property
	def symbol(self):
		return self.__symbol
	@property
	def number(self):
		return self.__number


hydrogen = Element('Hydrogen', 'H', 1)

# el_dict = {'name': 'Hydrogen', 'symbol': 'H', 'number': 1}
# hydrogen = Element(el_dict['name'], el_dict['symbol'], el_dict['number'])

print(hydrogen.name)
print(hydrogen.symbol)
print(hydrogen.number)
