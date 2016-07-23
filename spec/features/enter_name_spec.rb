require 'spec_helper'

feature 'Enter names' do
  scenario "user's name is displayed on the screen" do
    visit('/')
    fill_in :player_1_name, with: 'Player 1'
    click_button 'Submit'
    expect(page).to have_content 'Player 1'
  end
end
