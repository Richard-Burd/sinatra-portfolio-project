class User < ActiveRecord::Base
  has_many :authors
  has_many :books
  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
end
