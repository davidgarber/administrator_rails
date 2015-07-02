require 'rails_helper'

describe 'the delete a category process' do
  it 'deletes a category' do
    category = Category.create(:name => "ruby", :description => "language")
    visit category_path(category)
    click_on 'Delete'
    expect(page).to have_content "categories"
  end
end
