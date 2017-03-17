require 'rails_helper'

feature 'profiles' do
  context 'profile list page' do
      it 'should succesfully visit the profiles index' do
      visit '/'
      expect(page.status_code).to eq 200
    end
  end

  context 'index' do
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

    it 'should show a list of other user profiles' do
      visit '/'
      expect(page).to have_content 'test1'
      expect(page).to have_content 'male'
      expect(page).to have_content 'Kimberley'
    end

    it 'user should not be able to see their own profile' do
      visit '/'
      expect(page).to_not have_content 'Leslie'
    end

    it 'should let the user select memes' do
      visit '/'
      click_link 'Add Memes'
      expect(page).to have_content 'Save'
    end
  end
end
