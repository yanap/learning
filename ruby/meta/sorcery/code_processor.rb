# 外部ソースにあるコード文字列を処理する
# a_file_containing_lines_of_ruby.txt に何を書くのが正解かわからない 2013/1/20
File.readlines("a_file_containing_lines_of_ruby.txt").each do |line|
  puts "#{line.chomp} ==> #{eval(line)}"
end
