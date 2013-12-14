require 'rubygems'
require 'prawn'
require 'test/unit'
require_relative 'test_unit_extensions'

class TestInlineStyleParsing < Test::Unit::TestCase
  must "simply return the string if styles are not found" do
    @pdf = Prawn::Document.new
    assert_equal "Hello World", @pdf.parse_inline_styles("Hello World")
  end
end

class Prawn::Document
  def parse_inline_styles(text)
    text
  end
end
