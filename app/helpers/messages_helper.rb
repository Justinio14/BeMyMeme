module MessagesHelper
  module MessagesHelper
  def self_or_other(message)
    message.user == current_user ? "self" : "other"
  end

  def message_interlocutor(message)
    message.user == message.chat.chat_initiator ? message.chat.chat_initiator : message.chat.chat_recipient
  end
end
end
