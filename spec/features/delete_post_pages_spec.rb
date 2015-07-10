require 'rails_helper'

describe "the delete a post process" do
  it "deletes a post" do
    visit posts_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Delete'
    expect(page).to have_content "Blog Posts"
  end
end
