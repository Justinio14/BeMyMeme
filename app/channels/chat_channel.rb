class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chats-#{current_user.id}"
  end

  def unsubscribed
    stop_all_streams
  end

  def speak
    message_params = data['message'].each_with_object({}) do |el, hash|
      hash[el.values.first] = el.values.last
  end
end
