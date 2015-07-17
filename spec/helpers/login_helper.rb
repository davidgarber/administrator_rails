require 'rails_helper'

def login_admin(user = nil)
  admin = FactoryGirl.create :admin
  visit new_user_session_path
  fill_in 'Email', :with => admin.email
  fill_in 'Password', :with => admin.password
  click_button "Log in"
  admin
end

def login_user(user = nil)
  user = FactoryGirl.create :user
  visit new_user_session_path
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => user.password
  click_button "Log in"
  user
end
