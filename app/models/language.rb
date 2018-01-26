class Language < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  has_many :book_languages
  has_many :books, through: :book_languages
end
