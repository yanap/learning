# coding: utf-8

require 'rubygems'
require 'rspec'
require_relative 'fizzbuzz'

describe FizzBuzz do
  subject { FizzBuzz.new }
  context '与えられた数字が3の倍数でも5の倍数でもないとき' do
    it '与えられた数字を返すこと' do
      subject.say(1).should == 1
    end
  end
  context '与えられた数字が3の倍数のとき' do
    it { subject.say(3).should == 'Fizz' }
  end
  context '与えられた数字が5の倍数のとき' do
    it { subject.say(5).should == 'Buzz' }
  end
  context '与えられた数字が3の倍数かつ5の倍数のとき' do
    it { subject.say(15).should == 'FizzBuzz' }
  end
end
