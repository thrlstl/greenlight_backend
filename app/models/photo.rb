class Photo < ApplicationRecord

  belongs_to :collection
  has_one_attached :photo
  has_many :approvals

  def approvalsCount
    approvals = self.approvals.filter do |item|
      item.approval == true
    end
    approvals.count
  end

  def disapprovalsCount
    disapprovals = self.approvals.filter do |item|
      item.approval == false
    end
    disapprovals.count
  end

end
