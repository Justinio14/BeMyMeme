require 'rails_helper'

RSpec.describe Meme do
 it { should validate_presence_of(:name) }
 it { is_expected.to validate_presence_of(:tag) }
 it { should have_many(:users) }

 
end

# describe 'Meme' do
#   describe '#Add' do
#     it 'should update the Meme User join table' do
#       meme = Meme
#     end
#   end
# end
