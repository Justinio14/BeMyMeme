class Chat < ApplicationRecord
  validates_presence_of :chat_recipient, :chat_initiator
end
