class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat

  validates_presence_of :message
end

def timestamp
  created_at.strftime('%H:%M:%S %d %B %Y')

end
