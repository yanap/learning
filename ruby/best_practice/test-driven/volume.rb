# coding: utf-8

require 'rubygems'
require 'test/unit'
require_relative 'test_unit_extensions'

class VolumeTest < Test::Unit::TestCase

  def volume(x = 1, *rest)
    y, z = 1, 1
    if x.is_a?(Hash)
      y = x[:width]
      z = x[:height]
      x = x[:length]
    else
      y = rest[0] unless rest[0].nil?
      z = rest[1] unless rest[1].nil?
    end
    x * y * z
  end

  must "return 1 by default if no arguments are given" do
    # デフォルトではl=w=h=1
    assert_equal 1, volume
  end

  must "set l=x, set w, h = 1 when given 1 numeric argument" do
    x = 6
    assert_equal x, volume(x)
  end

  must "set l=x, w=y, and h=1 when given 2 arguments" do
    x, y = 6, 2
    assert_equal x*y, volume(x, y)
  end

  must "set l=x, w=y, and h=z when given 3 arguments" do
    x, y, z =6, 2, 7
    assert_equal x*y*z,  volume(x, y, z)
  end

  must "use :length, :width, and :height when given a hash argument" do
    x, y, z = 6, 2, 7
    assert_equal x*y*z, volume(length: x, width: y, height: z)
  end
end
