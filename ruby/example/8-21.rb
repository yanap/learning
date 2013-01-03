# encoding: utf-8
require './8-6.rb'
class Duration # 再オープン
	def self.a_week_from(from)
		return self.new(from, from+7*24*60*60)
	end
end
p Duration.a_week_from(Time.now)