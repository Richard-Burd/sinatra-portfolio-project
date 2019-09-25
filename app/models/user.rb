class User < ActiveRecord::Base
  has_many :authors
  has_many :books
  # Here is how you can see the books:
  # redburd@ubuntu:~/Desktop/dev/sinatra-portfolio-project$ bundle exec rake db:console
  # [1] pry(main)> User.first.books.to_sql
  # => "SELECT \"books\".* FROM \"books\" WHERE \"books\".\"user_id\" = 1"

  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
end
