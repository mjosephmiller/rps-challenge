feature "Choices" do
  scenario "Have three choices to pick from" do
    sign_in
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

end
