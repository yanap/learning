#!/usr/local/bin/ruby
# encoding: utf-8

class Duration
  %w[ days hours minutes seconds ].each do |name|
    attr_accessor name
  end
end

d = Duration.new # Durationオブジェクトを構築
d.days = 3 # 属性 days を設定
d.hours = 5 # 属性 hours を設定
p d.days #=> 3 属性 days を出力
