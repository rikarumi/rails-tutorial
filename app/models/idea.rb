class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  enum status: { active: 1, inactive: 0}
  belongs_to :user

  validates :name, :description, presence: true

end
