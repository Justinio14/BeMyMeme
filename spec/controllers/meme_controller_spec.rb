require 'rails_helper'

RSpec.describe MemesController, type: :controller do
  describe "GET #meme_gallery" do
    subject {get :meme_gallery}

    it 'renders the meme gallery template' do
      expect(subject).to render_template('_meme_gallery')
    end
  end
end
