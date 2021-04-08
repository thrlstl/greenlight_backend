class PhotoSerializer < ActiveModel::Serializer
  
  attributes :id,
            :photo,
            :caption,
            :approvals,
            :approvalsCount,
            :disapprovalsCount

  has_one :collection
  has_many :approvals

  include Rails.application.routes.url_helpers

  def photo
    rails_blob_path(object.photo, only_path: true) if object.photo.attached?
  end

end
