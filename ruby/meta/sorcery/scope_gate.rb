# class, module, def キーワードでスコープを区切る。

a = 1
defined? a # => "local-variable"

module MyModule
  b = 1
  defined? a # => nil
  defined? b # => "local-variable"
end

defined? a # => "local-variable"
defined? b # => nil