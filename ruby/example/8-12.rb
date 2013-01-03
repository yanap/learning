class Duration # 定義の追加
	def display(target=$>)
		super # super(target)と同じ意味
		target.write "(#{self.since}-#{self.until})"
	end
end
Duration.display