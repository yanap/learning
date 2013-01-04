# encoding: utf-8
require 'rubygems'
require 'gd2'
image = GD2::Image::TrueColor.new(270, 200)
image.draw do |pen|
	pen.color = image.palette.resolve GD2::Color[1.0, 1.0, 1.0]
	pen.fill
	pen.color = image.palette.resolve GD2::Color[1.0, 0.0, 0.0]
	pen.thickness = 2
	pen.move_to 20, 50
	pen.font = GD2::Font::TrueType['/Library/Fonts/Courier New.ttf', 40]
	pen.text "%s\n%s\n%s" % %w[Welcome to Ruby].map{|s| s.center(7)}
end
image.export('09-003-output.png')
