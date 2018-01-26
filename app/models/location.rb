class Location < ActiveRecord::Base
  has_many :author_locations
  has_many :authors, through: :author_locations
end
