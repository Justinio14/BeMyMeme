require 'rails_helper'

feature "User can sign in and out" do
  context "user not signed in and on the homepage" do
    it "should see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    it "should not see 'sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end
  end

  context "user signed in on the homepage" do
    before do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      fill_in('user_username', with: 'Leslie')
      fill_in('Dob', with: '24/01/1994')
      click_button('Sign up')
    end

    it "should see 'sign out' link" do
      visit('/')
      expect(page).to have_link('Sign out')
    end

    it "should not see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end

    it "should add be able to sign out" do
      visit '/'
      click_link('Sign out')
      expect(page).not_to have_link('Sign out')
    end
  end

feature 'viewing user profiles' do
  context 'user signed in'  do
    before do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      fill_in('user_username', with: 'Leslie')
      fill_in('Dob', with: '24/01/1994')
      click_button('Sign up')
    end
    xit "should take user to own profile when they click link My Profile" do
      click_link('My profile')
      expect(page).to have_content('Leslie')
  end

    xit "should take user to a user profile when they click a user Profile" do
      visit '/profiles'
      click_link 'test1'
      expect(page).to have_content 'test1'
      expect(current_path).to eq "/profiles/#{test1.id}"
  end
end

  context 'user not signed in' do
    xit "page should give options to Sign Up or Log in" do
      visit('/')
      expect(page).to have_content('Sign up')
      expect(page).to have_content('Log in')
    end
  end
end
end
