class MessagesController < ApplicationController
  def index
    messages = Message.where('conversation_id' => params[:id])
    render json: messages.reverse_order
  end

  def create
    message = Message.new(
      user_id: current_user.id,
      body: params[:body],
      conversation_id: params[:conversation_id]
    )
    if message.save
      ActionCable.server.broadcast "messages_channel", message
      render json: message
    else
      render json: {errors: message.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
