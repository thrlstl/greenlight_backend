class User < ApplicationRecord

    has_secure_password

    has_many :created_collections, :class_name => 'Collection'
    has_many :collaborations
    has_many :collabs, through: :collaborations, source: :collection

    def collections
        created_collections = self.created_collections.map{|collection| CollectionSerializer.new(collection)}
        collabs = self.collabs.map{|collection| CollectionSerializer.new(collection)}
        collections = (created_collections + collabs).uniq
    end
    
end
