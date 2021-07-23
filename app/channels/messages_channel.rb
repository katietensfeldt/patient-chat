class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_channel"
  end

  def receive(data)
    ActionCable.server.broadcast data
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
