class CollectionSerializer < ActiveModel::Serializer
  
  attributes :id, 
            :name, 
            :location, 
            :user_id, 
            :created_at, 
            :updated_at, 
            :photos, 
            :users

  has_many :photos
  # has_one :creator
  # has_many :collaborators, through: :collaborations
  
end
