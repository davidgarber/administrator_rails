require 'rails_helper'

describe 'the edit a category process' do
  it 'edits a category' do
    category = Category.create(:name => "Ruby", :description => "OO language")
    visit category_path(category)
    click_on 'Edit'
    fill_in 'Name', :with => 'HTML'
    fill_in 'Description', :with => 'Front-end language'
    click_on 'Update Category'
    expect(page).to have_content "Categories"
  end

  it "gives errors when name and description are left blank" do
    category = Category.create(:name => "Ruby", :description => "OO language")
    visit category_path(category)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    fill_in 'Description', :with => ''
    click_on 'Update Category'
    expect(page).to have_content "errors"
  end
end
