require 'rails_helper'

RSpec.describe Block do
  it { should belong_to(:user) }
end
