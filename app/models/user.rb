class User < ApplicationRecord

  validates :username, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :level, presence: true

  before_validation :check_username_unique
  before_validation :check_email_unique

  has_secure_password

  def check_username_unique
    u = User.find_by(username: username)
    if u != nil
      print("username already being used, adding an error")
      errors.add(:username, "is already being used, please choose another one")
    end
  end

  def check_email_unique
    u = User.find_by(email: email)
    if u != nil
      if admin != u.id
        print("admin id supplied not same as user. admin is #{admin} and user id is #{u.id}")
        errors.add(:email, "is already being used, please choose another email address.")
      end
    end
  end

  # 1. Expects a column named password_digest
  # 2. Provides an attr_accessor :password
  # 3. Provides a method named .authenticate(pwd)

end
