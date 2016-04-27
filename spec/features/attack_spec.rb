feature "attack" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content('Bob attacked Mike')
  end
  
  scenario "player 2's HP reduces by 10 after attack" do
    sign_in_and_play
    click_button "Attack"
    click_link 'OK'
    expect(page).to_not have_content 'Mike: 60HP'
    expect(page).to have_content 'Mike: 50HP'
  end
end
