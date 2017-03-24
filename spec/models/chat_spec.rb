require 'rails_helper'
require 'spec_helper'

RSpec.describe Chat do
  it { should validate_presence_of(:chat_initiator) }
  it { should validate_presence_of(:chat_recipient) }
  it { should have_many(:messages) }
end
