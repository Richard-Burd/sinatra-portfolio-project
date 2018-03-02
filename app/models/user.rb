class User < ActiveRecord::Base
  has_many :authors
  has_many :books
  has_secure_password

  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
