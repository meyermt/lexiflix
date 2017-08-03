class Video < ApplicationRecord

  validates :title, presence: true
  validates_uniqueness_of :loc_id, presence: true
  validates_uniqueness_of :icon_url, presence: true
  validates :director, presence: true
  validates :description, presence: true
  validates :script_root_url, presence: true

end
