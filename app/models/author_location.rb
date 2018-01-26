class AuthorLocation < ActiveRecord::Base
  belongs_to :author
  belongs_to :location
end  
