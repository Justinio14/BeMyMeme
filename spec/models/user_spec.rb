require 'rails_helper'

RSpec.describe User, type: :model do
   it { should have_many(:chats) }
   it { should have_many(:memes) }
   it { should have_many(:blocks) }
end
