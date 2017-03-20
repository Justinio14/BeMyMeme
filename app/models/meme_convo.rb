class MemeConvo < ApplicationRecord
  has_and_belongs_to_many :memes
  belongs_to :sender, foreign_key: :chat_initiator, class_name: User
  belongs_to :recipient, foreign_key: :chat_recipient, class_name: User

  validates :chat_initiator, uniqueness: { scope: :chat_recipient }

  scope :between, -> (chat_initiator, chat_recipient) do
    where(chat_initiator: chat_initiator, chat_recipient: chat_recipient).or(
      where(chat_initiator: chat_recipient, chat_recipient: chat_initiator)
    )
  end

   def self.get(chat_initiator, chat_recipient)
    meme_convo = between(chat_initiator, chat_recipient).first
    return meme_convo if meme_convo.present?
    create(chat_initiator: chat_initiator, chat_recipient: chat_recipient)
  end

  def opposed_user(user)
    user == recipient ? sender : recipient
  end
end
