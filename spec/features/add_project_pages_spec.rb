require 'rails_helper'

describe "the add a project process" do
  it "adds a new project" do
    category = Category.create(:name => "ruby", :description => "language")
    visit category_path(category)
    click_on "Add a project"
    fill_in "Title", :with => "Woot"
    fill_in "Detail", :with => "Woot Woot"
    fill_in "Url", :with => "google.com"
    click_on "Create Project"
    expect(page).to have_content "Woot"
  end

  it "gives error when title, detail or url is left blank" do
    category = Category.create(:name => "ruby", :description => "language")
    visit category_path(category)
    click_on "Add a project"
    click_on "Create Project"
    expect(page).to have_content 'errors'
  end
end
