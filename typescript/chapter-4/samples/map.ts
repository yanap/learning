function map<T, U>(array: T[], f: (item: T) => U): U[] {
	let result = []
	for (let i = 0; i < array.length; i++) {
		result[i] = f(array[i])
	}
	return result
}

console.log(
map(
	['a','b','c'], // Tの配列
	_ => _ === 'a' // Uを返す関数
)
)
