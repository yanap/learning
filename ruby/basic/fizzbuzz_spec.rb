# coding: utf-8

require 'rubygems'
require 'rspec'
require './fizzbuzz'
#require_relative 'fizzbuzz'

describe FizzBuzz do
  # インスタンスの作成をsubjectに
  subject { FizzBuzz.new }
  context '与えられた数字が1のとき' do
    it '1を返すこと' do
      # subjectにブロック値が割り当てられる
      subject.say(1).should == 1
    end
  end

  context '与えられた数字が2のとき' do
    it '2を返すこと' do
      subject.say(2).should == 2
    end
  end
end


