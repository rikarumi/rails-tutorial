class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  enum status: { active: 1, inactive: 0}
end
