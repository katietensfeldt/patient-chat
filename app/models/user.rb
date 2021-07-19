class User < ApplicationRecord
  enum type_of: [:patient, :partner]

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
