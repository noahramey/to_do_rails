require 'rails_helper'

describe "the edit list process" do
  it "edits a list" do
    list = List.create(:name => 'Home stuff')
    visit list_path(list)
    click_on 'Edit List'
    fill_in 'Name', :with => 'Work stuff'
    click_on 'Update List'
    expect(page).to have_content 'Work stuff'
  end

  it "gives error when no description is entered" do
    list = List.create(:name => 'Home stuff')
    visit list_path(list)
    click_on 'Edit List'
    fill_in 'Name', :with => ''
    click_button 'Update List'
    expect(page).to have_content 'errors'
  end
end
