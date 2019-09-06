class Music < ApplicationRecord
  belongs_to :user
  # has_attached_file :video, styles: {large: "600x600>",medium: "300x300>", thumb: "100x100>"}
  # validates_attachment_content_type :video, content_type: /\Aimage\/.*\z/
  mount_uploader :video, VideoUploader
  has_many :comments, dependent: :destroy
end
