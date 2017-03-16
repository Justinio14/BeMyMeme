require 'rails_helper'

RSpec.describe Chat do
  it { should validate_presence_of(:chat_initiator) }
  it { should validate_presence_of(:chat_recipient) }
  it { should have_many(:users) }
  it { should have_many(:messages) }
  it { should validate_uniqueness_of(:chat_recipient).scoped_to(:chat_initiator) }


  #it { should have_many(:memes) } to check using resources
  #it { should belong_to(:user) }
end
