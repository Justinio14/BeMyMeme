class Chat < ApplicationRecord
  validates_presence_of :chat_recipient, :chat_initiator
  belongs_to :chat_initiator, foreign_key: :chat_initiator_id, class_name: User
  belongs_to :chat_recipient, foreign_key: :chat_recipient_id, class_name: User
  validates :chat_initiator_id, uniqueness: { scope: :chat_recipient_id }
  has_many :messages, dependent: :destroy
  add_index :chats, [:chat_recipient_id, :chat_initiator_id], unique: true

  def opposed_user(user)
    user == chat_recipient ? chat_initiator : chat_recipient
  end

end
