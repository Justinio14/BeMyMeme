require 'rails_helper'

RSpec.describe API do
  context 'API return successfully' do

    it 'should add a new meme to the library' do
      API.refresh
      expect(Meme.all.length).to_not eq 0
    end
  end
end
