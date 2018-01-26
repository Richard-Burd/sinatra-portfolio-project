class AuthorPeriod < ActiveRecord::Base
  belongs_to :author
  belongs_to :period
end  
