class ConversationsController < ApplicationController
  def index
    conversations = current_user.conversations
    render json: conversations.as_json
  end

  def create
    conversation = Conversation.new(
      patient_id: current_user.id,
      partner_id: params[:partner_id]
    )
    if conversation.save
      render json: conversation.as_json
    else
      render json: { errors: conversation.errors.full_messages }, status: :bad_request
    end
  end

  def show
    conversation = current_user.conversations.find(params[:id])
    render json: conversation.as_json
  end

  def destroy
    conversation = current_user.conversations.find(params[:id])
    conversation.delete
    render json: {message: "Conversation successfully deleted"}
  end

end
