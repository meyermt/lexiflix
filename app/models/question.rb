class Question < ApplicationRecord

  validates :video_id, presence: true
  validates :level, presence: true
  validates :query, presence: true

  has_many :answers

  belongs_to :video

end
