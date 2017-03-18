class Chat < ApplicationRecord
  validates_presence_of :chat_recipient, :chat_initiator
  belongs_to :sender, foreign_key: :chat_initiator, class_name: User
  belongs_to :recipient, foreign_key: :chat_recipient, class_name: User

  validates :chat_initiator, uniqueness: { scope: :chat_recipient}

  has_many :messages, dependent: :destroy

  scope :between, -> (chat_initiator, chat_recipient) do
   where(chat_initiator: chat_initiator, chat_recipient: chat_recipient).or(
     where(chat_initiator: chat_recipient, chat_recipient: chat_initiator)
   )
 end

 def self.get(chat_initiator, chat_recipient)
   chat = between(chat_initiator, chat_recipient).first
   return chat if chat.present?

   create(chat_initiator: chat_initiator, chat_recipient: chat_recipient)
 end


  def opposed_user(user)
    user == chat_recipient ? chat_initiator : chat_recipient
  end

end
