
feature 'Attack player 2' do

  scenario ' Attack player 2 with confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Hanna attacked Ruta'
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    attack_and_confirm
    click_link 'Attack'
    expect(page).to have_content 'Ruta attacked Hanna'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Ruta: 100HP'
    expect(page).to have_content 'Ruta: 90HP'
  end

  scenario 'reduce player 1 HP by 10' do
    sign_in_and_play
    2.times{ attack_and_confirm }
    expect(page).not_to have_content 'Hanna: 100HP'
    expect(page).to have_content 'Hanna: 90HP'
  end


end
