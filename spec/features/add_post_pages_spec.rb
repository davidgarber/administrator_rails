require 'rails_helper'
require 'helpers/login_helper'

include Warden::Test::Helpers
Warden.test_mode!

describe "create a new post" do
  it "creates a new post" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :user)
    visit posts_path
    click_on 'Add a new post'
    fill_in 'Title', :with => "Blog"
    fill_in 'Body', :with => "This is not a blog."
    click_button 'Create Post'
    expect(page).to have_content 'Blog'
  end

    it 'gives an error when no title or body is entered' do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :user)
    visit posts_path
    click_on 'Add a new post'
    click_on 'Create Post'
    expect(page).to have_content 'errors'
  end
end
