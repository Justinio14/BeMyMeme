class Chat < ApplicationRecord
  validates_presence_of :chat_recipient, :chat_initiator
  has_many :users
  has_many :messages
end
