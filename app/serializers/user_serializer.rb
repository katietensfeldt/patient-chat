class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :type_of

  has_many :conversations
end
