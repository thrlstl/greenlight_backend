class ApprovalSerializer < ActiveModel::Serializer

  attributes :id, 
            :approval

  has_one :user
  has_one :photo
  
end
