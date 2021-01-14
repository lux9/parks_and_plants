class Garden < ApplicationRecord

  has_many :plants, dependent: :destroy   # <-- what to do with "orphan records"

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
