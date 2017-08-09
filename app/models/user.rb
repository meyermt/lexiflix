class User < ApplicationRecord

  validates_uniqueness_of :username, presence: true
  validates :password, confirmation: true, on: :create
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :level, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 2000 }

  has_many :results

  before_validation :check_email_unique
  before_validation :check_password

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

  def check_password
    # when a password is present, should check this information. password may not be present on all updates
    if password != nil
      if password.length < 6
        errors.add(:email, "Password length must be at least 6 characters.")
      end
    end
  end

end
