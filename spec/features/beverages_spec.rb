require 'spec_helper'

feature 'CRUD favorite beverages' do
  scenario 'user can create a list of beverages' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a beverage'
    fill_in 'Drink name', with: 'Bloody Mary'
    fill_in 'Alcohol', with: 'Vodka'
    click_on 'Add beverage'
    expect(page).to have_content 'Bloody Mary'
    expect(page).to have_content 'Vodka'
  end
end