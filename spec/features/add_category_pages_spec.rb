require 'rails_helper'

describe "the add a category process" do
  it "adds a new category" do
    visit categories_path
    click_on "Add a new category"
    fill_in "Name", :with => "Ruby"
    fill_in "Description", :with => "OO language"
    click_on "Create Category"
    expect(page).to have_content "Categories"
  end

  it "gives an error when no name or description is entered" do
    visit new_category_path
    click_on "Create Category"
    expect(page).to have_content 'errors'
  end
end
