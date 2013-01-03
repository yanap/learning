# encoding: utf-8
require 'rubygems'
gem 'activerecord'
require 'active_record'
# オンメモリにデータベースを構築
ActiveRecord::Base.establish_connection \
	:adapter => 'sqlite3', :database => ':memory:'
# 表を作成
ActiveRecord::Base.connection.create_table("books") do |t|
	t.string :isbn, :limit => 13, :null => false, :unique => true
	t.string :title, :null => false
	t.timestamp
end
# 書籍データベースの追加、検索
class Book < ActiveRecord::Base; end
Book.create!(:isbn => '9784003220931', :title => "ガリヴァー旅行記")
p Book.find_by_title("ガリヴァー旅行記") #=>
