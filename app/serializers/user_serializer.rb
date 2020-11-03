class UserSerializer < ActiveModel::Serializer
  
  attributes :id, 
            :first_name, 
            :last_name,
            :username,
            :email, 
            :password_digest, 
            :collections

  # has_many :created_collections, :class_name => 'Collection'
  # has_many :collabs, through: :collaborations, source: :collection

end
