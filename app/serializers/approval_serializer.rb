class ApprovalSerializer < ActiveModel::Serializer

  attributes :id, 
            :approval

  has_one :user
  
end
