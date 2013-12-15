require 'rubygems'
require 'prawn'
require 'test/unit'
require_relative 'test_unit_extensions'

class Prawn::Document
  def parse_inline_styles(text)
    text.split( %r{(</?[ib]>)} ).delete_if{|x| x.empty?}
  end
end

# test
class TestInlineStyleParsing < Test::Unit::TestCase
  must "simply return the string if styles are not found" do
    @pdf = Prawn::Document.new
    assert_equal "Hello World", @pdf.parse_inline_styles("Hello World")
  end

  must "parse italic tags" do
    @pdf = Prawn::Document.new
    assert_equal ["Hello ", "<i>", "Fine", "</i>", " World"],
      @pdf.parse_inline_styles("Hello <i>Fine</i> World")
  end

  must "parse bold tags" do
    @pdf = Prawn::Document.new
    assert_equal ["Some very ", "<b>", "bold text", "</b>"],
      @pdf.parse_inline_styles("Some very <b>bold text</b>")
  end

  must "not split out other tags than <i>, <b>, </i>, </b>" do
    @pdf = Prawn::Document.new
    assert_equal ["Hello <indigo>Ch", "</b>", "arl", "</b>", "ie</indigo>"],
      @pdf.parse_inline_styles("Hello <indigo>Ch</b>arl</b>ie</indigo>")
  end
end
