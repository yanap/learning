@cont = []
ActiveRecord::Base.transaction{
	catch :save_tx do
		# 長い計算
		collection.each do |item|
			# ...
			callcc{|c| @cont.push c; throw :save_tx} if some_condition?
		end
	end
}
ActiveRecord::Base.transaction{ @cont.pop.call } unless @cont.empty?