require 'rails_helper'

RSpec.describe MemesController, type: :controller do
  describe "GET #meme_gallery" do
    subject {get :meme_gallery}

    it 'renders the meme gallery template' do
      expect(subject).to render_template('_meme_gallery')
    end
  end

  describe "GET #add" do
    subject {get :add}

    it 'will add row to memes_users table' do
      user = User.create! :email => "add@meme.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'testaddmeme', :bio => 'great tester', :gender => 'not sure', :postcode => 'NG9 3GW', :location => 'Bramcote', :interested_in => 'female'
      Meme.create! :id => 0, :name => 'i.imgur.com/5ffdafadsfd', :tag => "yay"
      sign_in user

      expect{subject}.to change{user.memes.count}
    end
  end
end
