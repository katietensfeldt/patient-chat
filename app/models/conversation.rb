class Conversation < ApplicationRecord
  belongs_to :patient, class_name: "User", foreign_key: :patient_id
  belongs_to :partner, class_name: "User", foreign_key: :partner_id
end
