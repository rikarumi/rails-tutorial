class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  enum status: { pending: 0, approved: 1, rejected: 2}
  belongs_to :user

  validates :name, :description, presence: true
end
