CENTRAL_REPOSITORY = Object.new
def CENTRAL_REPOSITORY.register(target)
	@registered_objects ||= []
	unless @registered_objects.include? target
		@registered_objects << target
	end
end
def CENTRAL_REPOSITORY.unregister(target)
	@registered_objects ||= []
	@registered_objects.delete(target)
end