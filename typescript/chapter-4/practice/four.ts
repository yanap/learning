/*
4. [難問] callの実装(「4.2.5.2 制限付きポリモーフィズムを使って、可変長引数をモデル化する」
    を参照)を、２番目の引数がstringである関数についてだけ機能すルように書き換えてください。
    そうではない関数を渡すと、コンパイル時にエラーとなるようにします。
*/

function call<T extends [unknown, string, ...unknown[]], R>(
    f: (...args: T) => R,
    ...args: T
): R {
    return f(...args)
}

// 難問だ...

function fill(length: number, value: string): string[] {
    return Array.from({length}, () => value)
}

call(fill, 10, 'a') // string[]

