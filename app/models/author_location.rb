class SongGenre < ActiveRecord::Base
  belongs_to :author
  belongs_to :location
end  
