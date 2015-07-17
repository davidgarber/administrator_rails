require 'rails_helper'

describe "the delete a post process", js: true do
  it "deletes a post" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit posts_path
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Delete'
    expect(page).to have_content "Blog Posts"
  end
end
