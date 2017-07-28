class Video < ApplicationRecord

  validates :title, presence: true
  validates :loc_id, presence: true
  validates :icon_url, presence: true

end
