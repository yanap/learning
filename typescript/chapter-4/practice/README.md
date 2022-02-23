
1. Typescriptは、関数の型シグネチャのうち、どの部分を推論するのでしょうか？
パラメーターでしょうか、戻り値でしょうか、それともその両方でしょうか？

Typescriptは常に関数の戻り値の型を推論します。文脈から推論できる場合は、関数のパラメーター型を推論することもあります。
(例えば、その関数がコールバックの場合)

2. Javascriptのargumentsオブジェクトは型安全でしょうか？ もしそうでないとすると、代わりに何が使えるでしょうか？

argumentsは型安全ではありません。代わりに、次のようにレストパラメーターを使用すべきです。

変更前:

```js
function f() { console.log(argumants) }
```

変更後:

```js
function f(...args: unknown[]) { console.log(args) } 
```

3. exercise.tsに記載