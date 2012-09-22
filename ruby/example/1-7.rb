#!/usr/bin/ruby
# encoding: utf-8

require 'spec_helper'

# User: 投稿アカウントを持つ利用者
decribe User, " が、ログインしようとするときに" do
  # 前提条件
  before do
    @user = User.find_by_name('example of valid user')
  end
  it "は、正しいパスワードでログインできること" do
    @user.login('valid password')
    @user.should be_logged_in
  end
  it "は、パスワードなしでログインできないこと" do
    @user.login(nil)
    @user.should_not be_logged_in
  end
  it "は、間違ったパスワードではログインできないこと" do
    @user.login("wrong password")
    @user.should_not be_logged_in
  end
end
