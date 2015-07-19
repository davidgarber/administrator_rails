require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe 'the add a comment process' do
  it 'adds a new comment' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Name', :with => "David"
    fill_in 'Comment', :with => "This is not a comment."
    click_on 'Create Comment'
    expect(page).to have_content 'This is not a comment.'
  end
end
