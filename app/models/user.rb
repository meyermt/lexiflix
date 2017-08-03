class User < ApplicationRecord

  validates_uniqueness_of :username, presence: true
  validates :password, length: { in: 6..20 }, on: create
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :level, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 2000 }

  before_validation :check_email_unique

  has_secure_password

  def check_email_unique
    u = User.find_by(email: email)
    if u != nil && u.username != username
      if admin != u.id && admin != nil
        print("admin id supplied not same as user. admin is #{admin} and user id is #{u.id}")
        errors.add(:email, "is already being used, please choose another email address.")
      end
    end
  end

end
