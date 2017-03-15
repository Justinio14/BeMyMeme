require 'rails_helper'

RSpec.describe ApiController, :type => :controller do
  context 'API return successfully' do
    it 'should return an json object' do
      expect(response).to have_http_status(:success)
    end
  end
end
