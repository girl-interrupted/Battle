def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Bob'
  fill_in :player2_name, with: 'Sandra'
  click_button 'Submit'
end