# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature 'Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked Sandra'
  end

  scenario 'reduce Player 2 by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Sandra: 100hp'
    expect(page).to have_content 'Sandra: 90hp'
  end
end