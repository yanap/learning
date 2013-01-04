require './9-6.rb'
dicey = CybernatedAndroid.new("dicey2")
CybernatedAndroid.class_eval do
	def save; puts "saved" end
end
dicey.save