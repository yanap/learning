# encoding: utf-8
class Reporter
	def method_missing(method_name, *arguments)
		puts "メソッド#{method_name}が選ばれました"
		arguments.each{|arg| puts arg }
	end
end
reporter = Reporter.new
reporter.reporter
reporter.emergency 1,2