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

def user
  user = User.create! :email => "add@meme.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'testaddmeme', :bio => 'great tester', :gender => 'not sure', :postcode => 'NG9 3GW', :location => 'Bramcote', :interested_in => 'male'
end
def test_1_user
  user2 = User.create! :email => "bb@cc.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test1', :bio => 'great tester1', :gender => 'male', :postcode => 'NG10 3GW', :location => 'Kimberley', :interested_in => 'female'
end

def sign_up_DD
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  fill_in('user_username', with: 'Dirty Den')
  fill_in('user_bio', with: 'Albert Square erstwhile Lothario')
  fill_in('Dob', with: '24/01/1994')
  click_button('Sign up')
end