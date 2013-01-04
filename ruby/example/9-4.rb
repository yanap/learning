require 'rubygems'
gem 'wxruby'
require 'wx'
require 'open-uri'

class Hello < Wx::App
	def on_init
		resource = Wx::XmlResource.get
		resource.init_all_handlers
		resource.load("09-004-hello.wxg")
		@main = resource.load_frame(nil, "main")
		init_browser(@main.children.grep(Wx::HtmlWindow).first)
		init_button(@main.children.grep(Wx::Button).first)
		init_url(@main.children.grep(Wx::TextCtrl).first)
		@main.show
	end
	private
	def init_browser(ctrl); @browser = ctrl end
	def init_url(ctrl); @url = ctrl end
	def init_button(ctrl)
		@button = ctrl
		@button.evt_button(@button.id){
			open(@url.get_value){|f| @browser.set_page f.read }
		}
	end
end
Hello.new.main_loop
