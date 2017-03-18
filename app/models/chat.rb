class Chat < ApplicationRecord
  validates_presence_of :chat_recipient, :chat_initiator
  belongs_to :chat_initiator, foreign_key: :chat_initiator_id, class_name: User
  belongs_to :chat_recipient, foreign_key: :chat_recipient_id, class_name: User

  validates :chat_initiator_id, uniqueness: { scope: :chat_recipient_id }

  has_many :messages, dependent: :destroy

  scope :between, -> (chat_initiator_id, chat_recipient_id) do
   where(chat_initiator_id: chat_initiator_id, chat_recipient_id: chat_recipient_id).or(
     where(chat_initiator_id: chat_recipient_id, chat_recipient_id: chat_initiator_id)
   )
 end

 def self.get(chat_initiator_id, chat_recipient_id)
   chat = between(chat_initiator_id, chat_recipient_id).first
   return chat if chat.present?

   create(chat_initiator_id: chat_initiator_id, chat_recipient_id: chat_recipient_id)
 end


  def opposed_user(user)
    user == chat_recipient ? chat_initiator : chat_recipient
  end

end
