class Chat < ApplicationRecord
  validates_presence_of :chat_recipient, :chat_initiator
  validates_uniqueness_of :chat_recipient, :scope => :chat_initiator
  has_many :users
  has_many :messages, dependent: :destroy

  scope :between, -> (chat_initiator,chat_recipient) do
    where("(chat.chat_initiator = ? AND chat.chat_recipient =?) OR (chat.chat_recipient = ? AND chat.chat_recipient =?)", chat_initiator,chat_recipient, chat_recipient, chat_initiator)
  end

end
