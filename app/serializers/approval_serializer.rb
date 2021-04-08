class ApprovalSerializer < ActiveModel::Serializer

  attributes :id, 
            :approval,
            :user_id,
            :photo_id

  # has_one :user
  has_one :photo
  
end
