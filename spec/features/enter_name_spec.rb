require 'spec_helper'

feature 'Enter names' do
  scenario "user's name is displayed on the screen" do
    sign_in
    expect(page).to have_content 'Player 1'
  end
end
