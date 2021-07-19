class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_id
  
  belongs_to :conversation
  belongs_to :user
end
