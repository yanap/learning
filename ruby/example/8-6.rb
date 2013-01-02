class Duration
	def initialize(since, till)
		@since = since
		@until = till
	end
	attr_accessor :since, :until # 属性へのgetterとsetterを定義する
end
duration = Duration.new(Time.now, Time.now + 3600)
p duration.until 
p duration.since = Time.now