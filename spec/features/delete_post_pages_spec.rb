require 'rails_helper'

describe "the delete a post process" do
  it "deletes a post" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :user)
    visit posts_path
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Delete'
    expect(page).to have_content "Blog Posts"
  end
end
