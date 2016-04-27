feature 'Hit points' do
  scenario 'player one to see hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mike: 60HP'
  end
end
