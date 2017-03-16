require 'rails_helper'

RSpec.describe Message do
  it { should validate_presence_of(:message) }
end
