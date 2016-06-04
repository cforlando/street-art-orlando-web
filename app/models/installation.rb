class Installation < ActiveRecord::Base
  has_many :tags
  has_many :images

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :address, presence: true
end
