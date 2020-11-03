class Photo < ApplicationRecord

  belongs_to :collection
  has_one_attached :photo
  has_many :approvals

  # url_for(photo.photo)

end
