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

    xit 'will add row to memes_users table' do
      API.refresh
      user = User.create! :email => "add@meme.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'testaddmeme', :bio => 'great tester', :gender => 'not sure', :postcode => 'NG9 3GW', :location => 'Bramcote', :interested_in => 'female'
      sign_in user
      p user
      expect{subject}.to change{user.memes}
    end
  end
end
