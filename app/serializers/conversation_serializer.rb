class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :partner_id, :last_message

  belongs_to :patient
  belongs_to :partner

  def last_message
    object.messages.last
  end
end
