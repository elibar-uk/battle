
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content 'Bob vs. Mike'
  end
end
