require 'rails_helper'

RSpec.describe User, type: :model do
   it { should have_many(:chats) }
   it { should have_many(:memes) }
   it { should have_many(:blocks) }


   it { should validate_attachment_content_type(:image).
               allowing('image/png', 'image/gif').
               rejecting('text/plain', 'text/xml') }
  it { should validate_attachment_size(:image).
                            less_than(1.megabytes) }

   it { should have_many(:messages) }


end
