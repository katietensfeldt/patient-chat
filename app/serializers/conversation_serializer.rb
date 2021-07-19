class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :partner_id

  belongs_to :patient
  belongs_to :partner
  has_many :messages
end
