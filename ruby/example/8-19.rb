CENTRAL_REPOSITORY = Object.new
class << CENTRAL_REPOSITORY
	def register(target)
		@registered_objects ||= []
		unless @registered_objects.include? target
			@registered_objects << target
		end
	end
	def unregister(target)
		@registered_objects ||= []
		@registered_objects.delete(target)
	end
end