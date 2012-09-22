#!/usr/local/bin/ruby
# encoding: utf-8

class Duration
  %w[ days hours minutes seconds ].each do |name|
    attr_accessor name
  end
end

d = Duration.new # Duration���֥������Ȥ���
d.days = 3 # °�� days ������
d.hours = 5 # °�� hours ������
p d.days #=> 3 °�� days �����
