class Installation < ActiveRecord::Base
  has_many :tags

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :address, presence: true
end
