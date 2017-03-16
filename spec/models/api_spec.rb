require 'rails_helper'

RSpec.describe API do
  context 'API return successfully' do
    it 'should return an json object' do
      api = API.new
      expect(api.refresh).to include("dataasdfasdf af")
    end
  end
end
