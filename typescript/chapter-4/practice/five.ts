// 5. 型安全なアサーション関数、`is`を実装してください。型で概略を記述するとこから始めます。
// これは、完成したら、次のように使えるものです。

// string と stringを比較します
is('string', 'otherstring') // false

// booleanとbooleanを比較します
is(true, false)

// number と number を比較します
is(42, 42) // true

// 異なる型同士を比較すると、コンパイル時エラーになります
is(10, 'foo') // error

// なんもん
is([1], [1, 2], [1, 2, 3])

function is<T>(a: T, ...b: [T, ...T[]]): boolean {
	return b.every(_ => _ === a)
}
