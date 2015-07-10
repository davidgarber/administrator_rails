require 'rails_helper'

include Warden::Test::Helpers
Warden.test_mode!

describe "create a new post" do
  it "creates a new post" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit posts_path
    click_on 'Add a new post'
    fill_in 'Title', :with => "Blog"
    fill_in 'Body', :with => "This is not a blog."
    click_button 'Create Post'
    expect(page).to have_content 'Blog'
  end
end
