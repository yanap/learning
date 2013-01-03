# encoding: utf-8
require './8-6.rb'
class Duration # 8-6を再オープン
	def print_since; p @since end
end
duration1 = Duration.new(Time.now - 7, Time.now)
duration2 = Duration.new(Time.now + 7, Time.now + 14)
duration1.print_since
duration2.print_since