feature "attack" do
  scenario "player 1 attacks payer 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content('Bob attacked Mike')
  end
end
