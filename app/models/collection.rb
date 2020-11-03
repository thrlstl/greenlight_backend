class Collection < ApplicationRecord
  
  belongs_to :creator, class_name: "User", foreign_key: :user_id
  has_many :collaborations
  has_many :collaborators, through: :collaborations, source: :user
  has_many :photos

  def users
    [self.creator] + self.collaborators
  end

end
