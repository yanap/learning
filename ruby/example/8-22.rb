# encoding: utf-8
require './8-6.rb'
class Duration
	class << self # self(=Duration)の特異クラスを定義
		def a_week_from(from)
			return self.new(from, from+7*24*60*60)
		end
	end
end
p Duration.a_week_from(Time.now)
