class Answer < ApplicationRecord

  validates :question_id, presence: true
  validates :solution, presence: true

  belongs_to :question

end
