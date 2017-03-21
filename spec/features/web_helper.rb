def sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  fill_in('user_username', with: 'Leslie')
  fill_in('Dob', with: '24/01/1994')
  click_button('Sign up')
end
