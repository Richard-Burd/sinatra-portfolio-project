class BookLanguage < ActiveRecord::Base
  belongs_to :book
  belongs_to :language
end 
