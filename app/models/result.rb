class Result < ApplicationRecord

  validates :user_id, presence: true
  validates :video_id, presence: true
  validates :level, presence: true
  validates :score, presence: true

  belongs_to :user
  belongs_to :video

end
