function printType(x: any) {
	console.log(`${typeof(x)} ${Object.prototype.toString.call(x)}`)
}

let a = 1042
let b = 'apples and oranges'
const c = 'pineapples'
let d = [true, true, false]
let e = {type: 'ficus'}
let f = [1, false]
const g = [3]
let h = null

printType(a)
printType(b)
printType(c)
printType(d)
printType(e)
printType(f)
printType(g)
printType(h)
