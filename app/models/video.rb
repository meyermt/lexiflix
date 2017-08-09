class Video < ApplicationRecord

  validates :title, presence: true
  validates_uniqueness_of :loc_id, presence: true
  validates_uniqueness_of :icon_url, presence: true
  validates :director, presence: true
  validates :description, presence: true

  has_many :questions

end
