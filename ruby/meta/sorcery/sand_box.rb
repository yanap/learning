# 信頼できないコードを安全な環境で実行する。

def sandbox(&code)
  proc {
    $SAFE = 2
    yield
  }.call
end

begin
  sandbox { File.delete 'a_file' }
rescue Exception => ex
  ex # => #<SecurityError: Insecure operation 'delete' at level 2>
end