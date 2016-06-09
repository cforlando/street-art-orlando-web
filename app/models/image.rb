class Image < ActiveRecord::Base
  belongs_to :installation
  mount_uploader :photo, PhotoUploader
end
