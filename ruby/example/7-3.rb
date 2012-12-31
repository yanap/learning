# encoding: utf-8

array = [3, 4, 5]
some_method(1, 2, *array) # 1, 2, 3, 4, 5 で呼び出すのと同じ
# Ruby 1.8では構文エラー
some_method(1, 2, *array, *array, 6) # 1, 2, 3, 4, 5, 3, 4, 5, 6と同じ

