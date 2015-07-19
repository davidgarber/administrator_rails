require 'rails_helper'

include Warden::Test::Helpers
Warden.test_mode!

describe "the delete a comment process" do
  it "deletes a comment" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :user)
    visit posts_path
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Delete'
    expect(page).to have_content "Blog Posts"
  end
end
