import csv
from collections import Counter

counts = Counter()
with open ('zoo.csv', 'r') as fin:
	cin = csv.reader(fin)
	for num, row in enumerate(cin):
		if num > 0:
			counts[row[0]] += int(row[-1])
	for animal, hush in counts.items():
		print(f"{animal:>10} {hush:>10}")
