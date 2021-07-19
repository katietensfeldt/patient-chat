class User < ApplicationRecord
  enum type_of: [:patient, :partner]

  has_secure_password
  validates :email, presence: true, uniqueness: true

  def conversations
    Conversation.where("patient_id = ? OR partner_id = ?", id, id)
  end
end
