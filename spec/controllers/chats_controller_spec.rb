require 'rails_helper'

RSpec.describe ChatsController, type: :controller do
  describe "GET #index chat session" do
    subject {get :index}

    it 'returns the chat status_code 200' do
      expect(response).to have_http_status(200)
    end

    it "renders the template @chat" do
      expect(subject).to render_template(@chat)
    end
  end

  describe "GET #create chat session" do
    subject {get :create}
     it 'starts a chat with chosen recipient' do
    end
  end

  describe "GET #close chat session" do
    subject {get :close}
     it 'closes a chat with chosen recipient' do
    end
  end
end
