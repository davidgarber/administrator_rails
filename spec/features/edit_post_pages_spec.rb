require 'rails_helper'

include Warden::Test::Helpers
Warden.test_mode!

describe "edit a post" do
  it "edits a post" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => "Blog"
    fill_in 'Body', :with => "This is not a blog."
    click_button 'Update Post'
    expect(page).to have_content 'Blog'
  end

  it "returns error when body or title are blank" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => ""
    fill_in 'Body', :with => ""
    click_button 'Update Post'
    expect(page).to have_content 'errors'
  end
end
