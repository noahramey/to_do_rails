require 'rails_helper'

describe "the add a task process" do
  it "adds a new task" do
    list = List.create(:name => 'Home stuff')
    visit list_path(list)
    click_link 'Add a task'
    fill_in 'Description', :with => 'mow lawn'
    click_on 'Create Task'
    expect(page).to have_content 'mow lawn'
  end

  it "gives error when no description is entered" do
    list = List.create(name: "Home stuff")
    visit list_path(list)
    click_link 'Add a task'
    click_on 'Create Task'
    expect(page).to have_content 'errors'
  end
end
