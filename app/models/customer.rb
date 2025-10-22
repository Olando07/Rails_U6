class Customer < ApplicationRecord
  has_one_attached :image

  validates :fullName, presence: true
  validates :phoneNumber, presence: true

  def self.ransackable_associations(auth_object = nil)
    [ "image_attachment", "image_blob" ]
  end

  def self.ransackable_attributes(auth_object = nil)
    [ "fullName", "email", "phoneNumber", "notes", "created_at", "updated_at" ]
  end
end
