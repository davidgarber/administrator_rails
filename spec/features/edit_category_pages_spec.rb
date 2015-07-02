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

describe "the edit a project process" do
  it "edits a project" do
    category = Category.create(:name => "ruby", :description => "language")
    category.projects.create(:title => "Ping", :detail => "pong", :url => "ping-pong")
    visit category_path(category)
    click_on 'Alter'
    fill_in 'Title', :with => 'To Do'
    fill_in 'Detail', :with => 'list'
    fill_in 'Url', :with => 'google.com'
    click_on 'Update Project'
    expect(page).to have_content "categories"
  end

  it "give errors when title, detail or url are left blank" do
    category = Category.create(:name => "ruby", :description => "language")
    category.projects.create(:title => "Ping", :detail => "pong", :url => "ping-pong")
    visit category_path(category)
    click_on 'Alter'
    fill_in 'Title', :with => ''
    fill_in 'Detail', :with => ''
    fill_in 'Url', :with => ''
    click_on 'Update Project'
    expect(page).to have_content "errors"
  end
end

describe 'the delete a project process' do
  it 'deletes a project' do
    category = Category.create(:name => "ruby", :description => "language")
    category.projects.create(:title => "Ping", :detail => "pong", :url => "ping-pong")
    visit category_path(category)
    click_on 'Destroy'
    expect(page).to have_content "categories"
  end
end
