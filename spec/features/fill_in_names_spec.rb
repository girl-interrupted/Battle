feature 'Fill in the names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs. Sandra'
  end
end