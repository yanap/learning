# ブロックにselfを渡す

class Person
  attr_accessor :name, :surname

  def initialize
    yield self
  end
end

joe = Person.new do |p|
  p.name = 'Joe'
  p.surname = 'Smith'
end