#encoding: utf-8

class C
  @my_class_instance_variable = "なんらかの値"

  def self.class_attribute
    @my_class_instance_variable
  end
end

p C.class_attribute # => "なんらかの値"